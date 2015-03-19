as yet unclassified
testTvMedia
	self
		should:
			[self tag
				tvMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'tv'