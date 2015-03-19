tests
testRightSideFrame
	self
		should:
			[self tag
				rightSideFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'rhs'