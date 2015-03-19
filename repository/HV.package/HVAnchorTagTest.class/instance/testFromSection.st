tests
testFromSection
	self should:
		[self tag
			fromSection;
			with: []]
	addAttribute: 'rev'
	withValue: 'Section'