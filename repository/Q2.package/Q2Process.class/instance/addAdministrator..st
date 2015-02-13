administrators
addAdministrator: aUser

	administrators add: (self addUser: aUser).
	Q2Log notice: 'User ', aUser name, ' added as administrator in process: ', self name.