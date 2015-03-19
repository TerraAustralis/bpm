as yet unclassified
testSpan
	self
		should:
			[self tag
				span: 42;
				with: []]
		addAttribute: 'span'
		withValue: '42'