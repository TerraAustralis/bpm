tests
testBelowFrame
	self
		should:
			[self tag
				belowFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'below'