as yet unclassified
testClass
	self
		should:
			[self tag
				class: 'test';
				leftToRight;
				with: []]
		addAttribute: 'class'
		withValue: 'test'