as yet unclassified
testAttributeAtPutNumber
	self tag attributeAt: 'id' putNumber: 42.
	self assert: (self tag attributeAt: 'id') = '42'.
	self
		should: [self tag attributeAt: 'id' putNumber: -42]
		raise: HVAttributeError
		description: 'id can''t be negative'