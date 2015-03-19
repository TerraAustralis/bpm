as yet unclassified
testDisabled
	self 
		should: 
			[(self tag)
				disabled;
				with: []]
		addAttribute: 'disabled'
		withValue: 'disabled'