tests
testOnSubmit
	self should:
		[self tag
			onSubmit: 'test';
			with: []]
	addAttribute: 'onsubmit'
	withValue: 'test'