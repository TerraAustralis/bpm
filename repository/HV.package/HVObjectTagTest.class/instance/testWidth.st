tests
testWidth
	self
		should:
			[self tag
				width: 42;
				with: []]
		addAttribute: 'width'
		withValue: '42'.
	
	self
		should: [self tag width: -42]
		raise: HVAttributeError