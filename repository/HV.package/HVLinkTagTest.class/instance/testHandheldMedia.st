as yet unclassified
testHandheldMedia
	self
		should:
			[self tag
				handheldMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'handheld'