snapshot handling
recreateDatabase: aName with: aBlock
	 
	(self restoreDatabaseFrom: aName) ifFalse: [
		aBlock value.
		self copyDatabaseTo: aName ]