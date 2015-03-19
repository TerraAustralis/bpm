tests
testAllRules
	self
		should:
			[self tag
				allRules;
				with: []]
		addAttribute: 'rules'
		withValue: 'all'