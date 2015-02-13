as yet unclassified
apply
	"Perform the txn."

	self noteOldKeysFor: case.
	^case removeUser: theUser as: role