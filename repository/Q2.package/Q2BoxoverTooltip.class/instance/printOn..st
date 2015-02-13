as yet unclassified
printOn: aStream
	self keysAndValuesDo: [:key :val |
		aStream nextPutAll: key, '=[', val asString, ']']