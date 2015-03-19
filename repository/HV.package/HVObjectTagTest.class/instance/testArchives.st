tests
testArchives
	self
		should:
			[self tag
				archives: {'test1'. 'test2'};
				with: []]
		addAttribute: 'archive'
		withValue: 'test1 test2'