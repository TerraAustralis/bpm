*q2
findNamed: aString

	^self detect: [:each | each name = aString ] ifNone: [nil]