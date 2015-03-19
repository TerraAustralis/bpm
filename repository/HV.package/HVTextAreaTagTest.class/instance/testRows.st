as yet unclassified
testRows
	self
		should: 
			[self tag
				rows: 42;
				with: []]
		addAttribute: 'rows'
		withValue: '42'