transactions
apply
	"Perform the txn."

	self noteOldKeysFor: case.
	^case addUser: theUser as: role