tests
testBaselineAlignment
	self
		should:
			[self tag
				baselineAlignment;
				with: []]
		addAttribute: 'valign'
		withValue: 'baseline'