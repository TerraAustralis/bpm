as yet unclassified
testLongDescription
	self
		should:
			[self tag
				longDescription: 'test';
				with: []]
		addAttribute: 'longdesc'
		withValue: 'test'