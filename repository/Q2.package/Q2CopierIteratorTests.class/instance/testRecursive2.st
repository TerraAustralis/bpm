as yet unclassified
testRecursive2
	" I check that every object is visited only once.
	In this case we create an array being recursive (*) at its third element "

	| array objectsToBeVisited |
	array := {1. {2. 3}. 4 "*"}.
	array at: 3 put: array.
	objectsToBeVisited := { 
		array.
			array second. 
				array second second.
				array second first.
			array first }.
	self
		runSimpleTestOn: array 
		withExpectedResult: objectsToBeVisited