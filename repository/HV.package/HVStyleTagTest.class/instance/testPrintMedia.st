as yet unclassified
testPrintMedia
	self
		should:
			[self tag
				printMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'print'