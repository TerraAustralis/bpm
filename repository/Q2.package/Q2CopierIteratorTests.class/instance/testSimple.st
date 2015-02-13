as yet unclassified
testSimple
	" I check that visiting a nested array happens in the specified order "

	| array objectsToBeVisited |
	array := {1. {2. 3}. 4}.
	objectsToBeVisited := { 
		array.
			array third.
			array second. 
				array second second.
				array second first.
			array first }.
	self runSimpleTestOn: array withExpectedResult: objectsToBeVisited