visiting
visit: anObject
	self metAnObjectOf: anObject class.
	((visitedObjects includes: anObject) not and:
		[ self shouldVisit: anObject ])
		ifTrue: [
			self announcer announce: (Q2CurrentParent with: anObject).
			parentStack add: anObject.
			anObject ifNotNil: [ visitedObjects add: anObject ].
			anObject acceptIterator: self ]
		ifFalse: [
			stack removeLast.
			self announcer announce: announcementStack removeLast ]