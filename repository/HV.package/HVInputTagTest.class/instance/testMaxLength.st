tests
testMaxLength
	self should:
		[self tag
			maxLength: 42;
			with: []]
	addAttribute: 'maxlength'
	withValue: '42'.

	self
		should: [self tag maxLength: -42]
		raise: HVAttributeError