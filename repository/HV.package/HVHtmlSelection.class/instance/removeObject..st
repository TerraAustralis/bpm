accessing
removeObject: anObject
	^objects remove: anObject ifAbsent: [nil]