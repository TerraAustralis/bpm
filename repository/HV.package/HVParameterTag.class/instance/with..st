printing
with: aBlock
	self
		attributeAt: 'name'
		ifAbsent: [self attributeError: 'name can''t be null'].
	self canvas
		nextPut: $<;
		nextPutAll: self tag.
	self attributes keysAndValuesDo: [:key :value | self putAttribute: key value: value].
	self canvas nextPutAll: '/>'