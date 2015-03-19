tests
testTitle
	self should:
	[self tag
		title: 'test';
		with: []]
	addAttribute: 'title'
	withValue: 'test'