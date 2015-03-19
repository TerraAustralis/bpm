tests
testCharacterOffset
	self
		should: [self tag characterOffset: 42]
		raise: HVAttributeError.
	self should: 
			[(self tag)
				characterAlignment;
				character: $t;
				characterOffset: -42]
		raise: HVAttributeError.
	self 
		should: 
			[(self tag)
				characterAlignment;
				character: $t;
				characterOffset: 42;
				with: []]
		addAttribute: 'charoff'
		withValue: '42'