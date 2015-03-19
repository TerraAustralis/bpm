tests
testRules
	self
		should:
			[self tag
				rules: 'none';
				with: []]
		addAttribute: 'rules'
		withValue: 'none'