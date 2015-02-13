printing
printOn: stream

	stream nextPutAll: self class name, '[', (form ifNil: ['nil'] ifNotNil: [form name]), ']'