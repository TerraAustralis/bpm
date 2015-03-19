tests
testColumnScope
	self
		should:
			[self tag
				columnScope;
				with: []]
		addAttribute: 'scope'
		withValue: 'col'.