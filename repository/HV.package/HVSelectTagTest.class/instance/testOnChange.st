tests
testOnChange
	self should:
		[self tag
			onChange: 'test';
			with: []]
	addAttribute: 'onchange'
	withValue: 'test'