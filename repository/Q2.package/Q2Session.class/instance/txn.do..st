accessing
txn: txn do: aBlock
	"reCommit: aBlock txn: txn  tells us when it is committing a txn so we can know the txnInProgress,"

	txnInProgress := txn.
	aBlock ensure: [	txnInProgress := nil ].