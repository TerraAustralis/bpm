tests
testWith
	self tag attributes removeKey: 'action'.
	self
		should: [self tag with: []]
		raise: HVAttributeError
		description: '''action'' not set'.
	self tag action: 'test'.
	self assertTagName: #form.
	self assert: (self firstElement attributes at: 'method') = 'get'