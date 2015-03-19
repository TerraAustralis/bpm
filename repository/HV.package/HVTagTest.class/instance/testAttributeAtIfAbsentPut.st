tests
testAttributeAtIfAbsentPut
	self assert: (self tag attributeAt: 'class' ifAbsentPut: ['test']) = 'test'.
	self assert: (self tag attributeAt: 'class') = 'test'