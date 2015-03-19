tests
testBeSection
	self should:
		[self tag
			beSection;
			with: []]
	addAttribute: 'rel'
	withValue: 'Section'