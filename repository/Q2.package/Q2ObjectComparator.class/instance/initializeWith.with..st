as yet unclassified
initializeWith: anObject with: anotherObject
	objectIterator1 := Q2ComparatorIterator on: anObject.
	objectIterator2 := Q2ComparatorIterator on: anotherObject.
	mappedObjects := IdentityDictionary new.