tests
testEncodingType
	self should:
		[self tag
			encodingType: 'test';
			with: []]
	addAttribute: 'enctype'
	withValue: 'test'