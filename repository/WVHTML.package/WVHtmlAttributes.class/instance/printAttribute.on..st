printing
printAttribute: assoc on: aStream
	assoc value = false ifFalse:
		[aStream nextPut: $ .
		aStream nextPutAll: assoc key asLowercase.
		aStream nextPutAll: '="'.
		assoc value = true
			ifFalse: [aStream nextPutAll: assoc value asString]
			ifTrue: [aStream nextPutAll: assoc key asLowercase].
		aStream nextPut: $"]