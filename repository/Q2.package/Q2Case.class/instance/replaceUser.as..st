roles
replaceUser: aPersonOrUser as: aRole
	"Use when only one person/user can have the role."

	| old |
	old _ self userWithRole: aRole.
	old = aPersonOrUser ifTrue: [^self].
	old ifNotNil: [
		self removeRole: aRole.
		aRole addEventsRemovingUser: old case: self].
	self addUser: aPersonOrUser as: aRole