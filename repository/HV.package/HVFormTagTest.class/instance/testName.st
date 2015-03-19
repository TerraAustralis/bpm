tests
testName
	self should:
		[self tag
			name: 'test';
			with: []]
	addAttribute: 'id'
	withValue: 'test'