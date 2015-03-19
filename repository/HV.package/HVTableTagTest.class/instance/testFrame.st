tests
testFrame
	self
		should:
			[self tag
				frame: 'border';
				with: []]
		addAttribute: 'frame'
		withValue: 'border'