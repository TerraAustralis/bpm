tests
testOnBlur
	self should:
		[self tag
			onBlur: 'test';
			with: []]
	addAttribute: 'onblur'
	withValue: 'test'