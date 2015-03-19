tests
testArchive
	self
		should:
			[self tag
				archive: 'test';
				with: []]
		addAttribute: 'archive'
		withValue: 'test'