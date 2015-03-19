as yet unclassified
testCols
	self
		should: 
			[self tag
				cols: 42;
				with: []]
		addAttribute: 'cols'
		withValue: '42'