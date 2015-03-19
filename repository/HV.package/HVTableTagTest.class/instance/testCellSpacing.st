tests
testCellSpacing
	self
		should:
			[self tag
				cellSpacing: 42;
				with: []]
		addAttribute: 'cellspacing'
		withValue: '42'