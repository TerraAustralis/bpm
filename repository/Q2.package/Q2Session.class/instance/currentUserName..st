accessing
currentUserName: aString
	"Set current user by name."

	self currentUser: (self model findUserNamed: aString)