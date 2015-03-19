private
openTag: aTag 
	(self canvas)
		nextPut: $<;
		nextPutAll: aTag.
	self attributes 
		keysAndValuesDo: [:key :value | self putAttribute: key value: value].
	self canvas nextPut: $>