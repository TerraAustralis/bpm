as yet unclassified
testSimple2
	" I check that visiting a nested array happens in the specified order,
	omitting SmallIntegers "

	| array objectsToBeVisited |
	array := {1. {2. 3}. $x}.
	objectsToBeVisited := { 
		array.
			array third.
			array second }.
	self
		runSimpleTestOn: array 
		shouldNotVisit: (Set with: SmallInteger)
		withExpectedResult: objectsToBeVisited