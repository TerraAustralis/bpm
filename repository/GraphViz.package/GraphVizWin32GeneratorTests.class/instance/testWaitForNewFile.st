as yet unclassified
testWaitForNewFile

	| generator testFile  |
	generator _ Win32GraphVizGenerator new.
	testFile _ tempDir fullPathFor: 'testFile'.
	
	self should:
		[generator
			do: nil
			blockUntilFileUpdated: testFile
			waitingNoMoreThan: 1 second] raise: Error.
	
	self shouldnt:
		[generator
			do: [(tempDir forceNewFileNamed: 'testFile') nextPut: $.; close]
			blockUntilFileUpdated: testFile
			waitingNoMoreThan: 1 second] raise: Error