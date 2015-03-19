as yet unclassified
testWith
	self
		should: [self tag with: []]
		raise: HVAttributeError.
	self tag content: 'test'.
	self assertTagName: #meta.
	self assert: (self canvas contents endsWith: '/>')