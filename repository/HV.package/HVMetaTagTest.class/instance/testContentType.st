as yet unclassified
testContentType
	self
		should:
			[self tag
				contentType;
				content: 'test']
		addAttribute: 'http-equiv'
		withValue: 'content-type'