tests
testAbbreviation
	self
		should:
			[self tag
				abbreviation: 'test';
				with: []]
		addAttribute: 'abbr'
		withValue: 'test'