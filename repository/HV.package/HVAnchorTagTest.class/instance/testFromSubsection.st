tests
testFromSubsection
	self should:
		[self tag
			fromSubsection;
			with: []]
	addAttribute: 'rev'
	withValue: 'Subsection'