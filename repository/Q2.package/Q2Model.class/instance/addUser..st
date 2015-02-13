users
addUser: aUser
	"Add it."

	(Q2UserAddedEvent for: aUser) signal.
	self addObjectById: aUser.
	users add: aUser.
	Q2Log info: 'User added: ', aUser name.
	self runEvents.
	^aUser