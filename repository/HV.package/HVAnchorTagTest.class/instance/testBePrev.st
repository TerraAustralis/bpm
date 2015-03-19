tests
testBePrev
	self should:
		[self tag
			bePrev;
			with: []]
	addAttribute: 'rel'
	withValue: 'Prev'