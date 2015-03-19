tests
testFromPrevious
	self should:
		[self tag
			fromPrevious;
			with: []]
	addAttribute: 'rev'
	withValue: 'Prev'