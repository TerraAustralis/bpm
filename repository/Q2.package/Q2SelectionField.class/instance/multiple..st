accessing
multiple: anObject
	multiple := anObject.
	multiple ifTrue: [defaultValue _ OrderedCollection with: defaultValue ]