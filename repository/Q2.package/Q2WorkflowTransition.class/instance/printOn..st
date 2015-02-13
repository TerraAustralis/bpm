printing
printOn: aStream

	aStream nextPutAll: 'Transition[', from name asString, '->', to name asString, ']'.