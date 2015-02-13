permissions
newPermissionNamed: aName
	| perm |
	perm := Q2Permission named: aName.
	self addObjectById: perm.
	permissions add: perm.
	^perm