database
currentUser
	"Return wrapped user for my process, or else the non wrapped user."

	^self process
		ifNil: [self session currentUser] 
		ifNotNilDo:  [:proc | proc currentUser]