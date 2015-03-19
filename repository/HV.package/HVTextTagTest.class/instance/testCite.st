tests
testCite
	self
		should:
			[self tag
				cite: 'test';
				with: []]
		addAttribute: 'cite'
		withValue: 'test'