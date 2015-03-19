tests
testShape
	self should:
		[self tag
			shape: 'default';
			with: []]
	addAttribute: 'shape'
	withValue: 'default'