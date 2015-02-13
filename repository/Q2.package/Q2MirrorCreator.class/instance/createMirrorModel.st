as yet unclassified
createMirrorModel

	| root iterator parent postCopyActions |
	"rejectedObjects := IdentitySet new."
	postCopyActions := OrderedCollection new.
	iterator := Q2CopierIterator on: model.
	iterator announcer
		when: Q2RootElement
		do: [ :ann | root := self copyOf: ann value ];
		when: Q2CurrentParent 
		do: [ :ann | parent := self copyOf: ann value ];
		when: Q2NextElement
		do: [ :ann | parent add: (self copyOf: ann value) ];
		when: Q2NextIndexedElement
		do: [ :ann | parent at: ann index put: (self copyOf: ann value) ];
		when: Q2NextIvar
		do: [ :ann | 
			" we let the parent install its ivars. 
			it returns if its children should or should not be visited. "
			((parent install: (self copyOf: ann value) atIvar: ann index) not and: [ ann value notNil ])
				ifTrue: [ shouldNotVisitObjects add: ann value ] ];
		when: Q2NextMagmaCollectionIndex 
		do: [ :ann | 
			postCopyActions 	add: { 
				parent.
				ann value copy.
				[ :magmaCollection :index | magmaCollection addIndex: index  ] } ];
		when: Q2ShouldVisit 
		do: [ :ann | ann response: (self shouldNotVisit: ann value) not ];
		when: Q2ShouldAdd
		do: [ :ann | ann response: (mirrorDefinition shouldAdd: ann value).
			"ann response ifFalse: [ rejectedObjects add: ann value ] " ].
	[ iterator atEnd ] whileFalse: [ iterator next ].
	postCopyActions do: [ :each |
		each third value: each first value: each second ].
	root mirrorDefinition: mirrorDefinition.
	root lastMasterTxnNumber: model transactionLog lastTransactionNumber. "safe to use lastTransactionNumber because it's not the running model"
	root initializeTransactionsCollection.
	root cleanUpProcessCollection.
	self initializeObjectMap.
	^root