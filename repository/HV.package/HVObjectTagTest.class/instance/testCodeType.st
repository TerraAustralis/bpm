tests
testCodeType
	self
		should:
			[self tag
				codeType: 'test';
				with: []]
		addAttribute: 'codetype'
		withValue: 'test'