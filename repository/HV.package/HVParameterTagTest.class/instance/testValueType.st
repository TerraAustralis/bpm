tests
testValueType
	self
		should:
			[self tag
				name: 'test';
				valueType: 'data';
				with: []]
		addAttribute: 'valuetype'
		withValue: 'data'