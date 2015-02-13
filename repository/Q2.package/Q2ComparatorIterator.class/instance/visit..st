as yet unclassified
visit: anObjectWithPath
	| object |
	object := anObjectWithPath object.
	object ifNil: [ ^self ].
	(self isComparable: object) ifFalse: [
		" We don't memorize the Arrays we visit. 
		Because the compiler creates the same object 
		for equal literals in a compilation unit, and
		this messes up our identity comparsion. "
		object class == Array ifFalse: [ visitedObjects add: object ].
		anObjectWithPath acceptIterator: self.]