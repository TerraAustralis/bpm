as yet unclassified
applyMasterTxnOnMirror: aTxn 
	"Apply a master transaction on the mirror.
	First check if we already have it by looking at the number.
	If this transaction actually is a mirror txn originating from us, then
	we should not apply it - we just remove it from our mirrorTransactions
	collection."

	self flag: #q2TxnLogTodo.
	self flag: #q2MirroringTodo.
		" the comparsion of aTxn number with transactionLog size is not appropriate "

	aTxn clearTransactions.
	^self reCommit: [
		[ aTxn validate; do; postDo ] 
			on: Q2CurrentTxn
			do: [ :notification |
				notification resume: aTxn ].
		self session flushEvents. "Throw away events generated on the mirror"
		self lastMasterTxnNumber: aTxn number ]
		txn: aTxn.