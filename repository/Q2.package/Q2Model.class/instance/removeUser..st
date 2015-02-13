users
removeUser: aUser
	"Remove a user. Does NOT remove it globally!!!
	Do not use this, users should be disabled - not removed."

	Q2Log warn: 'User removed: ', aUser name.
	self removePerson: aUser person.
	users remove: aUser.
	self removeObjectById: aUser