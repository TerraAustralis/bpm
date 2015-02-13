tests
testTest
	^self 
		initializeDatabaseWith: [ self recreateTestDatabase ];
		serializeAndVerify;
		go