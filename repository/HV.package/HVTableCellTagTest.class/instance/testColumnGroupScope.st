tests
testColumnGroupScope
	self
		should:
			[self tag
				columnGroupScope;
				with: []]
		addAttribute: 'scope'
		withValue: 'colgroup'.