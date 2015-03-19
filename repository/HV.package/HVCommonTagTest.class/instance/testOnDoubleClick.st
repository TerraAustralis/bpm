tests
testOnDoubleClick
	self should:
		[self tag
			onDoubleClick: 'test';
			with: []]
	addAttribute: 'ondblclick'
	withValue: 'test'