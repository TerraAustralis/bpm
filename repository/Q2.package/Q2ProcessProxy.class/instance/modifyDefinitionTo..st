as yet unclassified
modifyDefinitionTo: aString
	| result |
	Q2Session releaseCurrent.
	Q2Session sessionModelDo: [ :session :model | | process txn |
		process := model findProcessNamed: processName.
		txn := model modifyProcessDefinitionIn: process to: aString.
		result := self resultOf: txn.
	].
	^result