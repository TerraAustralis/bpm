as yet unclassified
testValue
	self should:
		[self tag
			value: 'test';
			with: []]
	addAttribute: 'value'
	withValue: 'test'