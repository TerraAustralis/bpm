transactions
apply
	"Perform the txn."

	self noteOldKeysFor: case.
	^case makeTransition: transition