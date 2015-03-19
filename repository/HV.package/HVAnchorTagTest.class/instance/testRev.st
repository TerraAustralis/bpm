tests
testRev
	self should:
		[self tag
			rev: 'test';
			with: []]
	addAttribute: 'rev'
	withValue: 'test'