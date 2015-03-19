as yet unclassified
testRubyBaseSpan
	self
		should:
			[self tag
				rubyBaseSpan: 42;
				with: []]
		addAttribute: 'rbspan'
		withValue: '42'