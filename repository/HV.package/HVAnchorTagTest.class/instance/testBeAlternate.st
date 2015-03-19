tests
testBeAlternate
	self should:
		[self tag
			beAlternate;
			with: []]
	addAttribute: 'rel'
	withValue: 'Alternate'