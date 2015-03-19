tests
testVersion
	self
		should:
			[self tag
				version: 'test';
				with: []]
		addAttribute: 'version'
		withValue: 'test'.