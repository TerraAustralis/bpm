attributes - table
headers: aCollection
	| headers |
	headers := WriteStream on: String new.
	aCollection do: [:each | headers nextPutAll: each] separatedBy: [headers nextPutAll: ','].
	self attributeAt: 'headers' put: headers contents