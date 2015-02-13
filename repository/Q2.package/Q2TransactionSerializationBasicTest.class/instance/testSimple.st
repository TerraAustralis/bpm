tests
testSimple
	^self 
		initializeDatabaseWith: [ self recreateSimpleDatabase ];
		serializeAndVerify;
		go