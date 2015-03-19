tests
testStandby
	self
		should:
			[self tag
				standby: 'test';
				with: []]
		addAttribute: 'standby'
		withValue: 'test'