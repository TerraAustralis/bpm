tests
testVoidFrame
	self
		should:
			[self tag
				voidFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'void'