instance creation
tag: aTag attribute: aString
	^ (self new)
		htmlTag: aTag;
		attribute: aString;
		yourself