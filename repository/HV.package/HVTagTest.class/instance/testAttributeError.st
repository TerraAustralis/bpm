tests
testAttributeError
	self
		should: [self tag attributeError: 'test']
		raise: HVAttributeError
		description: 'test'