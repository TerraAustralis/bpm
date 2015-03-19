as yet unclassified
testHeight
	self
		should:
			[self tag
				height: 42;
				with: []]
		addAttribute: 'height'
		withValue: '42'.
	
	self
		should: [self tag height: -42]
		raise: HVAttributeError