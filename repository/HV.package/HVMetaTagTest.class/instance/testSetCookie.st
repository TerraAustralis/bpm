as yet unclassified
testSetCookie
	self
		should:
			[self tag
				setCookie;
				content: '']
		addAttribute: 'http-equiv'
		withValue: 'set-cookie'