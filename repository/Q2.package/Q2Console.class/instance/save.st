actions
save

	| txn |
	txn := self doTransaction.
	result := txn result.
	error := txn error