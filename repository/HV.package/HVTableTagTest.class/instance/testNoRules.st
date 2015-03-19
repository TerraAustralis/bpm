tests
testNoRules
	self
		should:
			[self tag
				noRules;
				with: []]
		addAttribute: 'rules'
		withValue: 'none'