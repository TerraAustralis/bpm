as yet unclassified
testScheme
	self
		should:
			[self tag
				scheme: 'test';
				content: '']
		addAttribute: 'scheme'
		withValue: 'test'