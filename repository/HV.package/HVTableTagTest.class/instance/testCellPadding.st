tests
testCellPadding
	self
		should:
			[self tag
				cellPadding: 42;
				with: []]
		addAttribute: 'cellpadding'
		withValue: '42'