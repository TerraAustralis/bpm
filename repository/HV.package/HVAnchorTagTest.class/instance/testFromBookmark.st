tests
testFromBookmark
	self should:
		[self tag
			fromBookmark;
			with: []]
	addAttribute: 'rev'
	withValue: 'Bookmark'