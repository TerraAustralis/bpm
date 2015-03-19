tests
testFromContents
	self should:
		[self tag
			fromContents;
			with: []]
	addAttribute: 'rev'
	withValue: 'Contents'