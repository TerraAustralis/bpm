tests
testTabIndex
	self should:
		[self tag
			tabIndex: 42;
			with: []]
	addAttribute: 'tabindex'
	withValue: '42'.

	self
		should: [self tag tabIndex: -42]
		raise: HVAttributeError.