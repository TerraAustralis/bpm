tests
testFromCopyright
	self should:
		[self tag
			fromCopyright;
			with: []]
	addAttribute: 'rev'
	withValue: 'Copyright'