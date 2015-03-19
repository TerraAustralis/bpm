tests
testFromAppendix
	self should:
		[self tag
			fromAppendix;
			with: []]
	addAttribute: 'rev'
	withValue: 'Appendix'