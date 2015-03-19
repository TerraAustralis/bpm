attributes
archives: aCollection
	| archives |
	archives := WriteStream on: String new.
	aCollection
		do: [:each | archives nextPutAll: each]
		separatedBy: [archives nextPutAll: ' '].
	self attributeAt: 'archive' put: archives contents