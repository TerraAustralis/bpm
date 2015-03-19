tests
testLeftAlignment
	self
		should:
			[self tag
				leftAlignment;
				with: []]
		addAttribute: 'align'
		withValue: 'left'