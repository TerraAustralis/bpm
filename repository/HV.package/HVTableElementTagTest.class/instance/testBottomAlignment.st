tests
testBottomAlignment
	self
		should:
			[self tag
				bottomAlignment;
				with: []]
		addAttribute: 'valign'
		withValue: 'bottom'