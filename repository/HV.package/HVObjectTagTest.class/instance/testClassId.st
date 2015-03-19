tests
testClassId
	self
		should:
			[self tag
				classId: 'test';
				with: []]
		addAttribute: 'classid'
		withValue: 'test'