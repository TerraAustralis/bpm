as yet unclassified
compare
	[ objectIterator1 atEnd | objectIterator2 atEnd ] whileFalse: [
		(self classesOfActualObjectsAreEqual and: [
		self actualObjectsAreComparable 
			ifTrue: [ self actualObjectsAreEqual ]
			ifFalse: [ self haveNotSeenTheseObjectsOrTheyAreTheSame ] ]) ifFalse: [ ^false ].
		self storeMappingIfNeeded.
		objectIterator1 next.
		objectIterator2 next ].
	^objectIterator1 atEnd & objectIterator2 atEnd