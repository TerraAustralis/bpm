initialize-release
initializeObjects

	objects := self dbSession newDBCollection.
	self dbSession addSearchStringIndex64: #searchString on: objects.