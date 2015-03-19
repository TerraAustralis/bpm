tests
testBeSubsection
	self should:
		[self tag
			beSubsection;
			with: []]
	addAttribute: 'rel'
	withValue: 'Subsection'