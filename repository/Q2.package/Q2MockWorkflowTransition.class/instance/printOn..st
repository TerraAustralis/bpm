printing
printOn: aStream
	aStream nextPut: $[.
	aStream nextPutAll: (
		from
			ifNil: ['Nil']
			ifNotNil: [from statusAsString]
		).
	aStream nextPutAll: '-->'.
	aStream nextPutAll: (
		to
			ifNil: ['Nil']
			ifNotNil: [to statusAsString]
		).
	aStream nextPut: $].