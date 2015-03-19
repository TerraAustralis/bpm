as yet unclassified
testAllMedia
	self
		should:
			[self tag
				allMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'all'