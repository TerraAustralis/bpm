users
renameUser: aUser to: newUsername
	"This should ideally be a txn."

	self flag: #q2todo.
	self noteOldKeysFor: aUser.
	aUser name: newUsername

"	users removeKey: aUser name.
	users at: newUsername put: aUser.
	aUser basicName: newUsername
"