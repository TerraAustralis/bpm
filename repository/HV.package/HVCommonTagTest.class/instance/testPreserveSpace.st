tests
testPreserveSpace
	self should:
	[self tag
		preserveSpace;
		with: []]
	addAttribute: 'xml:space'
	withValue: 'preserve'