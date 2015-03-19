tests
testFor
	self should: 
	[self tag
		for: 'test';
		with: []]
	addAttribute: 'for'
	withValue: 'test'