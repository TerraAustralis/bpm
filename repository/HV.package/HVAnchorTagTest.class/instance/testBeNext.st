tests
testBeNext
	self should:
		[self tag
			beNext;
			with: []]
	addAttribute: 'rel'
	withValue: 'Next'