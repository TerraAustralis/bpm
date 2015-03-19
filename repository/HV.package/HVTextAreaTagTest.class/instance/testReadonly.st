as yet unclassified
testReadonly
	self
		should: 
			[self tag
				readonly;
				with: []]
		addAttribute: 'readonly'
		withValue: 'readonly'