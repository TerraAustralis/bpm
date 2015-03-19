tests
testOnMouseOver
	self
		should:
		[self tag
			onMouseOver: 'test';
			with: []]
		addAttribute: 'onmouseover'
		withValue: 'test'