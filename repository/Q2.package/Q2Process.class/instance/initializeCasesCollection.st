initialize-release
initializeCasesCollection
	cases := self dbSession newDBCollection.
	self dbSession addUniqueObjectIndex: #stage on: cases.
	self dbSession addUniqueObjectIndex: #responsible on: cases.
	self dbSession addSearchStringIndex64: #name on: cases.

	Q2Platform platformIsGemStone ifFalse: [
		"we can't index these properties, since currently GS supports indexing only using ivar names"
		self dbSession addSearchStringIndex: #status on: cases.
		self dbSession addIntegerIndex: #createdSeconds on: cases.
		self dbSession addIntegerIndex: #modifiedSeconds on: cases.
	].