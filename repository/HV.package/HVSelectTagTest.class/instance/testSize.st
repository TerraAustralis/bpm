tests
testSize
	self should:
		[self tag
			size: 42;
			with: []]
	addAttribute: 'size'
	withValue: '42'.

	self
		should: [self tag size: -42]
		raise: HVAttributeError