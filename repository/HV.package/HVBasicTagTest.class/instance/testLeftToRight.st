as yet unclassified
testLeftToRight
	self should:
	[self tag
		leftToRight;
		with: []]
	addAttribute: 'dir'
	withValue: 'ltr'.