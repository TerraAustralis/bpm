tests
testPolygonalShape
	self 
		should: 
			[(self tag)
				polygonalShape;
				with: []]
		addAttribute: 'shape'
		withValue: 'poly'