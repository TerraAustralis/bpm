tests
testBeHelp
	self should:
		[self tag
			beHelp;
			with: []]
	addAttribute: 'rel'
	withValue: 'Help'