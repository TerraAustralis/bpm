printing
printOn: aStream

	aStream nextPutAll: self class name, '[', name asString, ']'