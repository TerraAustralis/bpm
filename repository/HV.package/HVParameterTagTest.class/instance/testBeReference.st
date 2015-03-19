tests
testBeReference
	self
		should:
			[self tag
				name: 'test';
				beReference;
				with: []]
		addAttribute: 'valuetype'
		withValue: 'ref'