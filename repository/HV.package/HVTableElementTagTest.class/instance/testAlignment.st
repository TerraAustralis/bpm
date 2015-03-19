tests
testAlignment
	self
		should:
			[self tag
				alignment: 'left';
				with: []]
		addAttribute: 'align'
		withValue: 'left'