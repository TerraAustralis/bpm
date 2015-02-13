testing
isReadable: anObject
	^ anObject ifNil: [true] ifNotNil: [self currentUser canRead: anObject]