tests
testFromHelp
	self should:
		[self tag
			fromHelp;
			with: []]
	addAttribute: 'rev'
	withValue: 'Help'