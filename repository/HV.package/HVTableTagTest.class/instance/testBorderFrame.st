tests
testBorderFrame
	self
		should:
			[self tag
				borderFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'border'