administrators
removeAdministrator: aUser

	administrators remove: aUser.
	Q2Log notice: 'User ', aUser name, ' removed as administrator in process: ', self name.