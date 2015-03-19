tests
testOnReset
	self should:
		[self tag
			onReset: 'test';
			with: []]
	addAttribute: 'onreset'
	withValue: 'test'