as yet unclassified
haveNotSeenTheseObjectsOrTheyAreTheSame
	mappedObjects
		at: objectIterator1 actualObject 
		ifPresent: [:actualObject |
			^actualObject ==
				objectIterator2 actualObject ].
	^true