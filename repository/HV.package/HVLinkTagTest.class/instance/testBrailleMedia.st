as yet unclassified
testBrailleMedia
	self
		should:
			[self tag
				brailleMedia;
				with: []]
		addAttribute: 'media'
		withValue: 'braille'