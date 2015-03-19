tests
testVerticalAlignment
	self
		should:
			[self tag
				verticalAlignment: 'middle';
				with: []]
		addAttribute: 'valign'
		withValue: 'middle'