tests
testDefaultSpace
	self should:
	[self tag
		defaultSpace;
		with: []]
	addAttribute: 'xml:space'
	withValue: 'default'