databases
recreateBootStrapDatabase
	self recreateDatabase: 'default-bootStrap' with: [
		self recreateEmptyDatabase. 
		Q2Model bootStrapDatabase ].