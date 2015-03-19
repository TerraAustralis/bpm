tests
testAccept
	self should:
		[self tag
			accept: 'test';
			with: []]
	addAttribute: 'accept'
	withValue: 'test'