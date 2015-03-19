tests
testAlt
	self should:
		[self tag
			alt: 'test';
			with: []]
	addAttribute: 'alt'
	withValue: 'test'