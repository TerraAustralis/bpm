comparing
printOn: aStream

	aStream nextPutAll: self class name, '[', self name asString, ']'