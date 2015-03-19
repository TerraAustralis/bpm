tests
testAboveFrame
	self
		should:
			[self tag
				aboveFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'above'