tests
testBeChapter
	self should:
		[self tag
			beChapter;
			with: []]
	addAttribute: 'rel'
	withValue: 'Chapter'