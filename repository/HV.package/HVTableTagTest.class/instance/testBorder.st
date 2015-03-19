tests
testBorder
	self
		should:
			[self tag
				border: 42;
				with: []]
		addAttribute: 'border'
		withValue: '42'.
	
	self
		should: [self tag border: -42]
		raise: HVAttributeError.