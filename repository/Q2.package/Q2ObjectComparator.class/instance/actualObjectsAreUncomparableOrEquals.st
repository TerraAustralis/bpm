as yet unclassified
actualObjectsAreUncomparableOrEquals
	objectIterator1 isActualComparable ifTrue: [ 
		(objectIterator1 actualObject = objectIterator2 actualObject) ifFalse: [ ^false ] ].
	^true