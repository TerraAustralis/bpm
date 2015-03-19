attributes - core
classes: aCollection
	| classes |
	classes := WriteStream on: String new.
	aCollection do: [:each | classes nextPutAll: each] separatedBy: [classes nextPutAll: ' '].
	self attributeAt: 'class' put: classes contents