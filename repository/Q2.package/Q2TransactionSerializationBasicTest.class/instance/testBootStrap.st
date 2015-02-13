tests
testBootStrap
	^self
		initializeDatabaseWith: [ self recreateBootStrapDatabase ];
		serializeAndVerify;
		go