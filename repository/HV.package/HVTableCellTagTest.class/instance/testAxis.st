tests
testAxis
	self
		should:
			[self tag
				axis: 'test';
				with: []]
		addAttribute: 'axis'
		withValue: 'test'