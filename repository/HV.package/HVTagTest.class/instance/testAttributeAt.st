tests
testAttributeAt
	self tag attributes at: 'class' put: 'test'.
	self assert: (self tag attributeAt: 'class') = 'test'