tests
testRowSpan
	self
		should:
			[self tag
				rowSpan: 42;
				with: []]
		addAttribute: 'rowspan'
		withValue: '42'.
	
	self
		should: [self tag rowSpan: -42]
		raise: HVAttributeError.