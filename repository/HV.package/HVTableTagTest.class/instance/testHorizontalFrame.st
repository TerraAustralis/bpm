tests
testHorizontalFrame
	self
		should:
			[self tag
				horizontalFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'hsides'