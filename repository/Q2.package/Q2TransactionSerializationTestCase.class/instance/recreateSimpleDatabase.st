databases
recreateSimpleDatabase
	self recreateDatabase: 'default-simple' with: [
		self recreateBootStrapDatabase.
		Q2Model loadSimple ]