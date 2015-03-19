tests
testFromPrev
	self should:
		[self tag
			fromPrev;
			with: []]
	addAttribute: 'rev'
	withValue: 'Prev'