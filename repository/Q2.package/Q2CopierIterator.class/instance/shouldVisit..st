announcing
shouldVisit: anObject
	^(self announcer announce: (Q2ShouldVisit with: anObject)) response