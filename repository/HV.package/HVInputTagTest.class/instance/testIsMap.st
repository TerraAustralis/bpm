tests
testIsMap
	self should:
		[self tag
			isMap;
			with: []]
	addAttribute: 'ismap'
	withValue: 'ismap'