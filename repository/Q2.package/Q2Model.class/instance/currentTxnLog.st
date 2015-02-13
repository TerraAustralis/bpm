accessing
currentTxnLog
	
	| parentTxn |
	parentTxn := Q2CurrentTxn signal.
	^parentTxn
		ifNil: [ transactionLog ]
		ifNotNil: [ parentTxn transactions ]