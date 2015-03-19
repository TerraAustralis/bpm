as yet unclassified
testProjectionMedia
	self
		should:
			[self tag
				projectionMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'projection'