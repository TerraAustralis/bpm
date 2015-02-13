as yet unclassified
runStructureTestOn: anObject 
	" I check that the announcements behave as expectied "

	| copier parent |
	copier := Q2CopierIterator on: anObject.
	copier announcer
		when: Q2RootElement
		do: [ :ann | self assert: anObject == ann value ];
		when: Q2CurrentParent 
		do: [ :ann | parent := ann value ];
		when: Q2NextElement
		do: [ :ann | self assert: (parent includes: ann value) ];
		when: Q2NextIndexedElement
		do: [ :ann | self assert: (parent at: ann index) == ann value ];
		when: Q2NextIvar
		do: [ :ann | self assert: (parent instVarAt: ann index) == ann value ];
		when: Q2ShouldVisit 
		do: [ :ann | ann response: true ];
		when: Q2ShouldAdd
		do: [ :ann | ann response: true ].	
	[ copier atEnd ] whileFalse: [ copier next ]