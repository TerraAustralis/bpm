tests
testId
	self
		should:
			[self tag
				name: 'test';
				id: 'test';
				with: []]
		addAttribute: 'id'
		withValue: 'test'