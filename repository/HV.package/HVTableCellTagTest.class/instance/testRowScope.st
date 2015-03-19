tests
testRowScope
	self
		should:
			[self tag
				rowScope;
				with: []]
		addAttribute: 'scope'
		withValue: 'row'.