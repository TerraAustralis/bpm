tests
testFromAlternate
	self should:
		[self tag
			fromAlternate;
			with: []]
	addAttribute: 'rev'
	withValue: 'Alternate'