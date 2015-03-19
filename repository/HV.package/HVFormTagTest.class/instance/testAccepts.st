tests
testAccepts
	self should:
		[self tag
			accepts: {'test1'. 'test2'};
			with: []]
	addAttribute: 'accept'
	withValue: 'test1 test2'