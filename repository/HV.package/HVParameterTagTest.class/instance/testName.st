tests
testName
	self
		should:
			[self tag
				name: 'test';
				with: []]
		addAttribute: 'name'
		withValue: 'test'