tests
testAction
	self should:
		[self tag
			action: 'test';
			with: []]
	addAttribute: 'action'
	withValue: 'test'