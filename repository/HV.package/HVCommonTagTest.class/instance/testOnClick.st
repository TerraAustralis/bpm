tests
testOnClick
	self should:
		[self tag
			onClick: 'test';
			with: []]
	addAttribute: 'onclick'
	withValue: 'test'