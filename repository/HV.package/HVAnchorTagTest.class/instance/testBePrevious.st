tests
testBePrevious
	self should:
		[self tag
			bePrevious;
			with: []]
	addAttribute: 'rel'
	withValue: 'Prev'