tests
testBeBookmark
	self should:
		[self tag
			beBookmark;
			with: []]
	addAttribute: 'rel'
	withValue: 'Bookmark'