tests
testBeIndex
	self should:
		[self tag
			beIndex;
			with: []]
	addAttribute: 'rel'
	withValue: 'Index'