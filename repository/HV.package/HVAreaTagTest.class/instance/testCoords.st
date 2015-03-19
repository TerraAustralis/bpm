as yet unclassified
testCoords
	self
		should:
			[self tag
				coords: 'test';
				with: []]
		addAttribute: 'coords'
		withValue: 'test'