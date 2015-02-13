tasks
serializeAndVerify
	self 
		addTask: [ self copyDatabaseTo: testName ] named: 'copying database';
		addTask: [ self serializeTransactions ] named: 'serializing txns';
		addTask: [ self rebuildDatabaseFromTransactions ] named: 'rebuilding database';
		addTask: [ self compareDatabaseWith: testName ] named: 'comparing databases'