tests
testOnMouseUp

	self should:
	[self tag
		onMouseUp: 'test';
		with: []]
	addAttribute: 'onmouseup'
	withValue: 'test'