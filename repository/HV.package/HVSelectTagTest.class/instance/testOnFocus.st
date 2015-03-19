tests
testOnFocus
	self should:
		[self tag
			onFocus: 'test';
			with: []]
	addAttribute: 'onfocus'
	withValue: 'test'