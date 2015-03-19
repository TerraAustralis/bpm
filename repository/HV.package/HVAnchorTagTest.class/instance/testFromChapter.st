tests
testFromChapter
	self should:
		[self tag
			fromChapter;
			with: []]
	addAttribute: 'rev'
	withValue: 'Chapter'