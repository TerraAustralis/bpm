tests
testSource
	self
		shouldnt:
			[self tag
				source: 'test';
				with: []]
		understandAttribute: 'src'