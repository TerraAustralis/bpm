tests
testBeAppendix
	self should:
		[self tag
			beAppendix;
			with: []]
	addAttribute: 'rel'
	withValue: 'Appendix'