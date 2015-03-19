tests
testCodeBase
	self
		should:
			[self tag
				codeBase: 'test';
				with: []]
		addAttribute: 'codebase'
		withValue: 'test'