roles
user: aUser hasRole: aRole

	| user |
	user _ self process wrappedUser: aUser.
	^roles includes: user -> aRole