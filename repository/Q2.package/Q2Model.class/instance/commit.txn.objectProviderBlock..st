transactions-private
commit: aBlock txn: txn objectProviderBlock: objectProviderBlock
	"Replay a transaction,"
	| result  |
	
	[ [ (self session txn: txn do: [ result := self tryToCommit: aBlock ])  ] 
		on: Q2TxnNotification 
		do: [ :notification | 
			notification resume: (objectProviderBlock value: notification) ] ]
		on: Error 
		do: [ :error |
self halt.
			Q2Log error: 'Error when running txn: ', error printString.
			self dbSession abortAndRefreshAllObjects.
			txn parentTxn ifNotNil: [ error pass ].
			result := nil ].
	 
	^result