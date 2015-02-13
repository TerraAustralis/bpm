printing
printOn: stream

	stream nextPutAll: self class name, '[', self name asString, ']'