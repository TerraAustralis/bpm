as yet unclassified
testMedia
	self
		should:
			[self tag
				media: 'test';
				with: []]
		addAttribute: 'media'
		withValue: 'test'