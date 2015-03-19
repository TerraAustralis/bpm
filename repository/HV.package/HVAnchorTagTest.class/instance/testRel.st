tests
testRel
	self should:
		[self tag
			rel: 'test';
			with: []]
	addAttribute: 'rel'
	withValue: 'test'