users
addUser: aUser
	"Give access to a user."

	aUser addProcess: self.
	^aUser