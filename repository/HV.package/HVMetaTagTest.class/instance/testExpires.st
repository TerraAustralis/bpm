as yet unclassified
testExpires
	self
		should:
			[self tag
				expires;
				content: '']
		addAttribute: 'http-equiv'
		withValue: 'expires'