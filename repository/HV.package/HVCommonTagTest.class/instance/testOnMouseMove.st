tests
testOnMouseMove
	self
		should:
		[self tag
			onMouseMove: 'test';
			with: []]
	addAttribute: 'onmousemove'
	withValue: 'test'