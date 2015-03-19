as yet unclassified
testSourceAlternativeText
	self
		should:
			[self tag
				source: 'test'
				alternativeText: 'test']
		addAttribute: 'src'
		withValue: 'test'