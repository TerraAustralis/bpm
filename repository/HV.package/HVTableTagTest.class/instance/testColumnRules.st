tests
testColumnRules
	self
		should:
			[self tag
				columnRules;
				with: []]
		addAttribute: 'rules'
		withValue: 'cols'