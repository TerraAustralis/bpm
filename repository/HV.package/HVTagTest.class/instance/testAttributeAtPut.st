tests
testAttributeAtPut
	self tag attributeAt: 'class' put: 'test'.
	self assert: (self tag attributes at: 'class') = 'test'