initialize-release
initializePersonsCollection
	persons := self dbSession newDBCollection.
	self dbSession addUUIDIndex: #id on: persons.
	self dbSession addSearchStringIndex128: #email on: persons.
	self dbSession addSearchStringIndex128: #email2 on: persons.