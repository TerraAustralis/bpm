tests
testOnKeyDown
	self should:
		[self tag
			onKeyDown: 'test';
			with: []]
	addAttribute: 'onkeydown'
	withValue: 'test'