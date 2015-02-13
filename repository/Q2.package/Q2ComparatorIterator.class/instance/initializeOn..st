as yet unclassified
initializeOn: anObject

	stack := OrderedCollection with: (Q2ObjectWithPath on: anObject).
	visitedObjects := IdentitySet new.
	self initializeComparableClasses