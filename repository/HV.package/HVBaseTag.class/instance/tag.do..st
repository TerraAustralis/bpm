private
tag: aString do: aBlock 
	self canvas
		nextPut: $<;
		nextPutAll: aString.
	self attributes keysAndValuesDo: [:key :value | self putAttribute: key value: value].
	self canvas nextPutAll: '/>'