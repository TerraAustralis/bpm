tests
testBeMultiple
	self 
		should: 
			[(self tag)
				beMultiple;
				with: []]
		addAttribute: 'multiple'
		withValue: 'multiple'