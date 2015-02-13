roles
rolesForUser: aUser

	| user |
	user := self process wrappedUser: aUser.
	^roles select: [:ass | ass key = user ] thenCollect: [:ass | ass value ]