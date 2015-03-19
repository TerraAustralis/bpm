as yet unclassified
testCharset
	self
		should:
			[self tag
				charSet: 'test';
				with: []]
		addAttribute: 'charset'
		withValue: 'test'