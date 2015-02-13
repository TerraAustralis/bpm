tests
testEmpty
	^self
		initializeDatabaseWith: [ self recreateEmptyDatabase ];
		serializeAndVerify;
		go.