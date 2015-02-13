users
userExists: aUser
	"Check that the user exists. Users should never be deleted, but
	they could have been created in a mirror etc."

	^users includes: aUser