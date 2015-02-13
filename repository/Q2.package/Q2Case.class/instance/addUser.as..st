roles
addUser: aUser as: aRole
	"Add the role for this user, but only if it does not already exist."

	| user |
	self flag: #q2todo. "Ensure that only Q2Roles are added. Cleaner solution needed."
	(aRole isKindOf: Q2Role) ifFalse: [ self halt ]. 
	user := self process wrappedUser: aUser.
	(self user: user hasRole: aRole) ifFalse: [
		roles add: user -> aRole.
		aRole addEventsForUser: user case: self]