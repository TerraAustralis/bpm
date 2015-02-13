as yet unclassified
install: anObject atIvar: index

	| instVarName |
	instVarName := self class allInstVarNames at: index.
	
	instVarName caseOf: {
		[ 'administrators' ] -> [administrators := OrderedCollection new. ^false ].
		[ 'mirrors' ] -> [ mirrors := OrderedCollection new. ^false ].
		[ 'processPrototypes' ] -> [ processPrototypes := OrderedCollection new. ^false ].
		[ 'defaultModifyCaseForm' ] -> [ defaultModifyCaseForm := nil. ^false ].
		[ 'defaultCreateCaseForm' ] -> [ defaultCreateCaseForm := nil. ^false ].
		[ 'defaultTableCaseForm' ] -> [ defaultTableCaseForm := nil. ^false ].
		[ 'transactionLog' ] -> [ self initializeTransactionsCollection. ^false ].
		[ 'definedCategories' ] -> [ definedCategories := OrderedCollection new. ^false ].
		[ 'forms' ] -> [ forms := OrderedCollection new. ^false ].
		[ 'globalDefinition' ] -> [ globalDefinition := ''. ^false ].
		[ 'notificationsTable' ] -> [ notificationsTable := Q2NotificationTable new. ^false ].
		[ 'serviceQueues' ] -> [ self clearServiceQueues. ^false ] }
		otherwise: [ ^super install: anObject atIvar: index.
			"#('users' 'persons' 'processes' 'cases' 
			'caseCounter' 'customObjectTypes' 'linkTypes' 
			'roles'  'useIndexing' 'objects'  'plugInRegistry' 
			'settings' 'settingsDict')" ].