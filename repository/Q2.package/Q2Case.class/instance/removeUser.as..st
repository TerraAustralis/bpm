roles
removeUser: aUser as: aRole
	"Remove the role for this user if it exists."

	| user |
	user := self process wrappedUser: aUser.
	(self user: user hasRole: aRole) ifTrue: [
		roles remove: user -> aRole.
		aRole removeEventsForUser: user case: self]