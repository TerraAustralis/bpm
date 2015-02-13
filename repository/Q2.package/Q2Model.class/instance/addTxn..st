transactions-private
addTxn: aTxn
	"Adding mirror transactions on the master reassigns them a strict
	sequential number. The sequence reflects the logical
	point in time when the transaction was applied on the master.
	We also stamp the txn with a timestamp."

	| currentTxnLog |
	currentTxnLog := self currentTxnLog.
	aTxn number: currentTxnLog size + 1; postMaster.
	currentTxnLog add: aTxn.	
	^aTxn