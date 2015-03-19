as yet unclassified
testSelected
	self 
		should: 
			[(self tag)
				selected;
				with: []]
		addAttribute: 'selected'
		withValue: 'selected'