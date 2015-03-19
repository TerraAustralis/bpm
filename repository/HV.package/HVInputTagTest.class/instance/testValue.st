tests
testValue
	self should:
		[self tag
			value: 'test']
	addAttribute: 'value'
	withValue: 'test'