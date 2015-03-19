basic markup
openTag: aString
	^document pushElement: (self createTag: aString)