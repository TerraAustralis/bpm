tests
testOnKeyUp
	self should:
		[self tag
			onKeyUp: 'test';
			with: []]
	addAttribute: 'onkeyup'
	withValue: 'test'