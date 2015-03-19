tests
testGroupRules
	self
		should:
			[self tag
				groupRules;
				with: []]
		addAttribute: 'rules'
		withValue: 'groups'