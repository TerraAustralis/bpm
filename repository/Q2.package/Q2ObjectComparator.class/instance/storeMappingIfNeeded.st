as yet unclassified
storeMappingIfNeeded
	objectIterator1 actualObject class == Array ifTrue: [^self].
	mappedObjects
		at: objectIterator1 actualObject
		ifAbsentPut: [objectIterator2 actualObject]