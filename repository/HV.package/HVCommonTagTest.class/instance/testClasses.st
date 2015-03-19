tests
testClasses
	self should:
		[self tag
			classes: {'test1'. 'test2'};
			with: []]
	addAttribute: 'class'
	withValue: 'test1 test2'