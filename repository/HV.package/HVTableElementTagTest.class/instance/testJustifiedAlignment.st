tests
testJustifiedAlignment
	self
		should:
			[self tag
				justifiedAlignment;
				with: []]
		addAttribute: 'align'
		withValue: 'justify'