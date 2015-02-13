as yet unclassified
testRecursive
	" I check that every object is visited only once.
	In this case we create an array being recursive (*) at its first element "

	| array objectsToBeVisited |
	array := {1 "*". {2. 3}. 4}.
	array at: 1 put: array.
	objectsToBeVisited := { 
		array.
			array third.
			array second. 
				array second second.
				array second first }.
	self
		runSimpleTestOn: array 
		withExpectedResult: objectsToBeVisited