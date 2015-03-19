as yet unclassified
testType
	self
		should:
			[self tag
				type: 'test';
				with: []]
		addAttribute: 'type'
		withValue: 'test'