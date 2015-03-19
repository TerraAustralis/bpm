tests
testVerticalFrame
	self
		should:
			[self tag
				verticalFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'vsides'