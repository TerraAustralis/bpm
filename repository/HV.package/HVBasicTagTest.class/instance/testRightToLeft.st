as yet unclassified
testRightToLeft
	self should:
	[self tag
		rightToLeft;
		with: []]
	addAttribute: 'dir'
	withValue: 'rtl'.