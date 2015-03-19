as yet unclassified
testWith
	self
		should: [self tag with: []]
		raise: HVAttributeError
		description: '''dir'' not set'.
	self tag attributeAt: 'dir' put: 'ltr'.
	self assertTagName: #bdo