as yet unclassified
modifyDefinitionTo: aString
	| result |
	Q2Session releaseCurrent.
	Q2Session sessionModelDo: [ :session :model | |txn|
		txn := model modifyGlobalDefinitionTo: aString.
		result := self resultOf: txn.
	].
	^result