accessing
attributes
	| coll |
	coll := OrderedCollection new.
	coll add: (Association key: 'creationtime' value: creationTime asDateAndTime asString).
	^coll