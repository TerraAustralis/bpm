tests
testBeStart
	self should:
		[self tag
			beStart;
			with: []]
	addAttribute: 'rel'
	withValue: 'Start'