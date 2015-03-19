as yet unclassified
testWith
	self assertTagName: #script.
	self tag attributes removeKey: 'type'.
	self
		should: [self tag with: []]
		raise: HVAttributeError