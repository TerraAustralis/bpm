tests
testRectangularShape
	self 
		should: 
			[(self tag)
				rectangularShape;
				with: []]
		addAttribute: 'shape'
		withValue: 'rect'