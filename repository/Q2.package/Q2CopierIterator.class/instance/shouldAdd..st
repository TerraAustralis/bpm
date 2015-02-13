announcing
shouldAdd: anObject
	^(self announcer announce: (Q2ShouldAdd with: anObject)) response