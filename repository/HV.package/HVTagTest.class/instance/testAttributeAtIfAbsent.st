tests
testAttributeAtIfAbsent
	self tag attributeAt: 'class' put: 'test'.
	self assert: (self tag attributeAt: 'class' ifAbsent: ['foo']) = 'test'.
	self assert: (self tag attributeAt: 'test' ifAbsent: ['foo']) = 'foo'