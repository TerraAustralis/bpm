tests
testData
	self
		should:
			[self tag
				data: 'test';
				with: []]
		addAttribute: 'data'
		withValue: 'test'