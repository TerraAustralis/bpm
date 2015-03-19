tests
testBoxFrame
	self
		should:
			[self tag
				boxFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'box'