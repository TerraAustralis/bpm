initialize-release
printOn: aStream

	aStream nextPutAll: self class name, '[', number asString, ']'