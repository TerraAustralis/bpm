as yet unclassified
testRelativeWidth
	self
		should:
			[self tag
				relativeWidth: 'test';
				with: []]
		addAttribute: 'width'
		withValue: 'test'