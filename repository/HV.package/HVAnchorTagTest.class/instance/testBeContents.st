tests
testBeContents
	self should:
		[self tag
			beContents;
			with: []]
	addAttribute: 'rel'
	withValue: 'Contents'