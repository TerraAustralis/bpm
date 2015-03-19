tests
testDeclare
	self
		should:
			[self tag
				declare;
				with: []]
		addAttribute: 'declare'
		withValue: 'declare'