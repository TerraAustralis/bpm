initialize-release
initializeUsersCollection
	users := self dbSession newDBCollection.
	self dbSession addUUIDIndex: #id on: users.
	self dbSession addSearchStringIndex128: #name on: users.