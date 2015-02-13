testing
isWritable: anObject 
	^anObject ifNil: [false] ifNotNil: [self currentUser canWrite: anObject]