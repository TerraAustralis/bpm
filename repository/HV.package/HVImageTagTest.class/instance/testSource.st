as yet unclassified
testSource
	self
		should:
			[self tag
				source: 'test';
				with: []]
		addAttribute: 'src'
		withValue: 'test'