tests
testBeData
	self
		should:
			[self tag
				name: 'test';
				beData;
				with: []]
		addAttribute: 'valuetype'
		withValue: 'data'