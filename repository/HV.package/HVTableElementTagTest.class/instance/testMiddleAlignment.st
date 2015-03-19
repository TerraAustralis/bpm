tests
testMiddleAlignment
	self
		should:
			[self tag
				middleAlignment;
				with: []]
		addAttribute: 'valign'
		withValue: 'middle'