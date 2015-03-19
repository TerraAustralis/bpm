tests
testUseGet
	self should:
		[self tag
			useGet;
			with: []]
	addAttribute: 'method'
	withValue: 'get'