finding
removeImportedUser: aUser

	^importedUsers remove: (self findUserNamed: aUser name)