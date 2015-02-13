as yet unclassified
runSimpleTestOn: anObject shouldNotVisit: aSetOfClasses withExpectedResult: objectsToBeVisited
	" I check that anObject is visited in the expected order. I omit objects which are instances of one of the given classes "

	| copier visitedObjects |
	copier := Q2CopierIterator on: anObject.
	visitedObjects := OrderedCollection new.
	copier announcer
		when: Q2ShouldVisit
		do: [ :ann | 
			ann response: (aSetOfClasses includes: ann value class) not.
			ann response ifTrue: [ visitedObjects add: ann value ] ];
		when: Q2ShouldAdd
		do: [ :ann |
			ann response: true ].
	[ copier atEnd ] whileFalse: [ copier next ].
	self assert: visitedObjects size = objectsToBeVisited size.
	1 to: objectsToBeVisited size do: [ :i |
		self assert: (visitedObjects at: i) == (objectsToBeVisited at: i) ]