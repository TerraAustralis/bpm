tests
testXmlns
	self
		should:
			[self tag
				xmlns: 'test';
				with: []]
		addAttribute: 'xmlns'
		withValue: 'test'.