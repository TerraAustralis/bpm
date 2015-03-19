as yet unclassified
testTtyMedia
	self
		should:
			[self tag
				ttyMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'tty'