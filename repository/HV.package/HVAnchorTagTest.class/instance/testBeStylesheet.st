tests
testBeStylesheet
	self should:
		[self tag
			beStylesheet;
			with: []]
	addAttribute: 'rel'
	withValue: 'Stylesheet'