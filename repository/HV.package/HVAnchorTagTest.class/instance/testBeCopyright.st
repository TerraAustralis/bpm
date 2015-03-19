tests
testBeCopyright
	self should:
		[self tag
			beCopyright;
			with: []]
	addAttribute: 'rel'
	withValue: 'Copyright'