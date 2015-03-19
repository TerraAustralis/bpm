tests
testOnMouseDown
	self should:
		[self tag
			onMouseDown: 'test';
			with: []]
	addAttribute: 'onmousedown'
	withValue: 'test'