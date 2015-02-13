transactions-private
reApplyTxn: aTxn 
	"Apply a txn which was applied earlier in another model."

	| result |
	aTxn clearTransactions. " Transactions are not kept. We recreate them. "
	result := self reCommit: [
		[ aTxn validate; do; postDo ]
			on: Q2CurrentTxn 
			do: [:notification |
				notification resume: aTxn ].
		self addTxn: aTxn] txn: aTxn.
	(result notNil and: [ self isMirror not ]) ifTrue: [ aTxn postMasterOutsideTransaction].
	^result