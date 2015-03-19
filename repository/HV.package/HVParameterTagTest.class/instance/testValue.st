tests
testValue
	self
		should:
			[self tag
				name: 'test';
				value: 'test';
				with: []]
		addAttribute: 'value'
		withValue: 'test'