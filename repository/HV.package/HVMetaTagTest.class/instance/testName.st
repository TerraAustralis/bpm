as yet unclassified
testName
	self
		should:
			[self tag
				name: 'test';
				content: '']
		addAttribute: 'name'
		withValue: 'test'