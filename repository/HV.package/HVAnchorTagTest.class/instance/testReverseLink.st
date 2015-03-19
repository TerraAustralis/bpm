tests
testReverseLink
	self should:
		[self tag
			reverseLink: 'test';
			with: []]
	addAttribute: 'rev'
	withValue: 'test'