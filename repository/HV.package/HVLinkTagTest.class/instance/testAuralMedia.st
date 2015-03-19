as yet unclassified
testAuralMedia
	self
		should:
			[self tag
				auralMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'aural'