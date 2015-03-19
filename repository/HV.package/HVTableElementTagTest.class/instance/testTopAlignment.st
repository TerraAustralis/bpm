tests
testTopAlignment
	self
		should:
			[self tag
				topAlignment;
				with: []]
		addAttribute: 'valign'
		withValue: 'top'