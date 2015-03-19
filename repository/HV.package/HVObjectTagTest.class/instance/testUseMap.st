tests
testUseMap
	self
		should:
			[self tag
				useMap: 'test';
				with: []]
		addAttribute: 'usemap'
		withValue: 'test'