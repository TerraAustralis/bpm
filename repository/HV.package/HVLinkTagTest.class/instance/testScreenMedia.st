as yet unclassified
testScreenMedia
	self
		should:
			[self tag
				screenMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'screen'