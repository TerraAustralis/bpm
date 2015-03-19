tests
testContentType
	self should:
		[self tag
			contentType: 'test';
			with: []]
	addAttribute: 'type'
	withValue: 'test'