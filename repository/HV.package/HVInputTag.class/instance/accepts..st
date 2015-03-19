attributes
accepts: aCollection
	| contentTypes |
	contentTypes := WriteStream on: String new.
	aCollection
		do: [:each | contentTypes nextPutAll: each]
		separatedBy: [contentTypes nextPutAll: ' '].
	self attributeAt: 'accept' put: contentTypes contents