tests
testHeaders
	self
		should:
			[self tag
				headers: {'test1'. 'test2'};
				with: []]
		addAttribute: 'headers'
		withValue: 'test1,test2'.