tests
testRowRules
	self
		should:
			[self tag
				rowRules;
				with: []]
		addAttribute: 'rules'
		withValue: 'rows'