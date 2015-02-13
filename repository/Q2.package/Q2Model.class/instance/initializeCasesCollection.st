initialize-release
initializeCasesCollection
	cases := self dbSession newDBCollection.
	self dbSession addUniqueObjectIndex: #stage on: cases.

	Q2Platform platformIsGemStone ifFalse: [
		"we can't index these properties, since GS supports indexing by using ivar names"
		self dbSession addUniqueObjectIndex: #process on: cases.
		self dbSession addSearchStringIndex: #status on: cases.
		self dbSession addIntegerIndex: #createdSeconds on: cases.
		self dbSession addIntegerIndex: #modifiedSeconds on: cases.
	].
	self dbSession addUniqueObjectIndex: #responsible on: cases.
	self dbSession addUUIDIndex: #id on: cases.
	self dbSession addSearchStringIndex: #name on: cases.