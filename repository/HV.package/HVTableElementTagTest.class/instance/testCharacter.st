tests
testCharacter
	self
		should: [self tag character: $t]
		raise: HVAttributeError.

	self
		should:
			[self tag
				characterAlignment;
				character: $t;
				with: []]
		addAttribute: 'char'
		withValue: 't'