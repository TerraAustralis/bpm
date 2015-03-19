tests
testSummary
	self
		should:
			[self tag
				summary: 'test';
				with: []]
		addAttribute: 'summary'
		withValue: 'test'