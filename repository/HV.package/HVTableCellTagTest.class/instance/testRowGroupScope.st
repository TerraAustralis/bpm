tests
testRowGroupScope
	self
		should:
			[self tag
				rowGroupScope;
				with: []]
		addAttribute: 'scope'
		withValue: 'rowgroup'.