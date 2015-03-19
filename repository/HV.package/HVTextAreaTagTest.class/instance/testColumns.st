as yet unclassified
testColumns
	self
		should: 
			[self tag
				columns: 42;
				with: []]
		addAttribute: 'cols'
		withValue: '42'