tests
testDeclareOnly
	self
		should:
			[self tag
				declareOnly;
				with: []]
		addAttribute: 'declare'
		withValue: 'declare'