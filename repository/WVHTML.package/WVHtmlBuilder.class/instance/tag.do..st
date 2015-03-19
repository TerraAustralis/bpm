basic markup
tag: aString do: anObject
	self openTag: aString.
	self render: anObject.
	^self close