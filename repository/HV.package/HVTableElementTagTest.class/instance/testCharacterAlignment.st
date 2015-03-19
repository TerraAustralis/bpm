tests
testCharacterAlignment
	self
		should:
			[self tag
				characterAlignment;
				with: []]
		addAttribute: 'align'
		withValue: 'char'