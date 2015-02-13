printing
printOn: aStream

	aStream nextPutAll: self class name.
	transition 
		ifNil: [aStream nextPutAll: '[','no transition',']']
		ifNotNil: [transition printOn: aStream].
	self printTailOn: aStream.