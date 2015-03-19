printing
printOn: stream
	stream nextPutAll: self class name, '[', name asString, ']'