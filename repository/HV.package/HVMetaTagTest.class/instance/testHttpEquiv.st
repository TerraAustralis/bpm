as yet unclassified
testHttpEquiv
	self
		should:
			[self tag
				httpEquiv: 'test';
				content: '']
		addAttribute: 'http-equiv'
		withValue: 'test'