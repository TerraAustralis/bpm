tests
testId
	self should:
		[(self tag)
			id: 'test';
			with: []]
	addAttribute: 'id'
	withValue: 'test'