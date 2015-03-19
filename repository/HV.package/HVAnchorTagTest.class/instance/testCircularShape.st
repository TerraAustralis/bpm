tests
testCircularShape
	self 
		should: 
			[(self tag)
				circularShape;
				with: []]
		addAttribute: 'shape'
		withValue: 'circle'