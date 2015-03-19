as yet unclassified
testWith
	self tag: (self classToTest canvas: self canvas).
	self
		should: [self tag with: []]
		raise: HVAttributeError.
	self tag attributeAt: 'src' put: ''.
	self
		should: [self tag with: []]
		raise: HVAttributeError.
	self tag attributeAt: 'alt' put: ''.
	self assertTagName: #img.
	self assert: (self canvas contents endsWith: '/>')