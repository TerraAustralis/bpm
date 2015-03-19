tests
testCenterAlignment
	self
		should:
			[self tag
				centerAlignment;
				with: []]
		addAttribute: 'align'
		withValue: 'center'