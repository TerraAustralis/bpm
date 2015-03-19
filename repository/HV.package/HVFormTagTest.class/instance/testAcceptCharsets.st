tests
testAcceptCharsets
	self should:
		[self tag
			acceptCharsets: {'test1'. 'test2'};
			with: []]
	addAttribute: 'accept-charset'
	withValue: 'test1 test2'