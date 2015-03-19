tests
testOnKeyPress
	self should:
		[self tag
			onKeyPress: 'test';
			with: []]
	addAttribute: 'onkeypress'
	withValue: 'test'