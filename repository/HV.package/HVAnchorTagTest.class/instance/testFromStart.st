tests
testFromStart
	self should:
		[self tag
			fromStart;
			with: []]
	addAttribute: 'rev'
	withValue: 'Start'