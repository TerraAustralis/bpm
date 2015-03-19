tests
testType
	self
		should:
			[self tag
				name: 'test';
				type: 'test';
				with: []]
		addAttribute: 'type'
		withValue: 'test'