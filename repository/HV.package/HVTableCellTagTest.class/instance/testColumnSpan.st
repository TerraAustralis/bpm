tests
testColumnSpan
	self
		should:
			[self tag
				columnSpan: 42;
				with: []]
		addAttribute: 'colspan'
		withValue: '42'.
	
	self
		should: [self tag columnSpan: -42]
		raise: HVAttributeError