as yet unclassified
testRecursive3
	" I check that every object is visited only once.
	In this case we create an array being recursive (*) at its second element "

	| array objectsToBeVisited |
	array := {1. {2. 3}. "*" 4}.
	array at: 2 put: array.
	objectsToBeVisited := { 
		array.
			array third. 
			array first }.
	self
		runSimpleTestOn: array 
		withExpectedResult: objectsToBeVisited