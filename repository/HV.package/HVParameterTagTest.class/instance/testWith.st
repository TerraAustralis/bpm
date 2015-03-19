tests
testWith
	self
		should: [self tag with: []]
		raise: HVAttributeError.
	self tag attributeAt: 'name' put: 'test'.
	self assertTagName: #param.
	self assert: self canvas contents = '<param name="test"/>'