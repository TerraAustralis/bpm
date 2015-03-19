attributes
profiles: aCollection
	| profiles |
	profiles := WriteStream on: String new.
	aCollection
		do: [:each | profiles nextPutAll: each]
		separatedBy: [profiles nextPutAll: ' '].
	self attributeAt: 'profile' put: profiles contents