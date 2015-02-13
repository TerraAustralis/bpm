as yet unclassified
testRecursive4
	" I check that every object is visited only once.
	In this case we create an array being recursive (*) in its nested element "

	| array objectsToBeVisited |
	array := {1. {2. 3 "*"}. 4}.
	array second at: 2 put: array.
	objectsToBeVisited := { 
		array.
			array third. 
			array second.
				array second first.
			array first }.
	self
		runSimpleTestOn: array 
		withExpectedResult: objectsToBeVisited