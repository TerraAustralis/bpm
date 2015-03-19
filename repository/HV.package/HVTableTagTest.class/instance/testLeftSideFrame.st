tests
testLeftSideFrame
	self
		should:
			[self tag
				leftSideFrame;
				with: []]
		addAttribute: 'frame'
		withValue: 'lhs'