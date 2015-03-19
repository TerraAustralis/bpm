tests
testOnMouseOut
	self
		should:
		[self tag
			onMouseOut: 'test';
			with: []]
		addAttribute: 'onmouseout'
		withValue: 'test'