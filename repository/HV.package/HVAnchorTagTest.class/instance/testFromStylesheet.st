tests
testFromStylesheet
	self should:
		[self tag
			fromStylesheet;
			with: []]
	addAttribute: 'rev'
	withValue: 'Stylesheet'