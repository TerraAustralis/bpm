users
findUserNamed: username
	"Find the user with that user name."

	^users readUnique: #name at: username