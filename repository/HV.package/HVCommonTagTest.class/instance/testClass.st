tests
testClass
	self should:
		[self tag
			class: 'test';
			with: []]
	addAttribute: 'class'
	withValue: 'test'