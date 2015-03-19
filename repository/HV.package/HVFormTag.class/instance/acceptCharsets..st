attributes
acceptCharsets: aCollection
	| encodings |
	encodings := WriteStream on: String new.
	aCollection
		do: [:each | encodings nextPutAll: each]
		separatedBy: [encodings nextPutAll: ' '].
	self attributeAt: 'accept-charset' put: encodings contents