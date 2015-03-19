tests
testRightAlignment
	self
		should:
			[self tag
				rightAlignment;
				with: []]
		addAttribute: 'align'
		withValue: 'right'