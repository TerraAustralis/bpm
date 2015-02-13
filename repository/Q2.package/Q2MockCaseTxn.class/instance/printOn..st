printing
printOn: aStream

	aStream nextPutAll: self class name.
	self printTailOn: aStream.