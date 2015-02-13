initialize-release
initializeObjectsCollection
	objects := self dbSession newDBCollection.
	self dbSession addUUIDIndex: #id on: objects.