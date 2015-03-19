as yet unclassified
testAlternativeText
	self
		should:
			[self tag
				alternativeText: 'test';
				with: []]
		addAttribute: 'alt'
		withValue: 'test'