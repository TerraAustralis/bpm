tests
testBeObject
	self
		should:
			[self tag
				name: 'test';
				beObject;
				with: []]
		addAttribute: 'valuetype'
		withValue: 'object'