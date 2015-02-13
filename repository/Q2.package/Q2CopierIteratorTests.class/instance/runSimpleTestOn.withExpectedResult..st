as yet unclassified
runSimpleTestOn: anObject withExpectedResult: objectsToBeVisited

	^self runSimpleTestOn: anObject shouldNotVisit: Set new withExpectedResult: objectsToBeVisited