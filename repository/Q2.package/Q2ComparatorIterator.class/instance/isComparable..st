as yet unclassified
isComparable: anObject
	" I tell that this kind of object is comparable or not, 
	anObject is comparable if it is a class 
	or if it's class is in the ComparableClassess"

	^anObject class class == Metaclass or: [ 
		comparableClasses includes: anObject class ]