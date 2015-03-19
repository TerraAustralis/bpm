tests
testOnSelect
	self should:
		[self tag
			onSelect: 'test';
			with: []]
	addAttribute: 'onselect'
	withValue: 'test'