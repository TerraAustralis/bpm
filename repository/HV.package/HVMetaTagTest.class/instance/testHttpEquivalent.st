as yet unclassified
testHttpEquivalent
	self
		should:
			[self tag
				httpEquivalent: 'test';
				content: '']
		addAttribute: 'http-equiv'
		withValue: 'test'