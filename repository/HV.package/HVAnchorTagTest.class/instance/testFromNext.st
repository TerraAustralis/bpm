tests
testFromNext
	self should:
		[self tag
			fromNext;
			with: []]
	addAttribute: 'rev'
	withValue: 'Next'