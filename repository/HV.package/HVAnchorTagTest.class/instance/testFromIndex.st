tests
testFromIndex
	self should:
		[self tag
			fromIndex;
			with: []]
	addAttribute: 'rev'
	withValue: 'Index'