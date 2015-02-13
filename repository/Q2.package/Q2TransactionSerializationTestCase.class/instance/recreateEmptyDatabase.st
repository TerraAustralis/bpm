databases
recreateEmptyDatabase
	self recreateDatabase: 'default-empty' with: [ 
		Q2Model initializeDatabase ].