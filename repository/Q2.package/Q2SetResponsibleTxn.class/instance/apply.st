transactions
apply
	"Perform the txn."

	self noteOldKeysFor: case.
	^case responsible: responsibleUser