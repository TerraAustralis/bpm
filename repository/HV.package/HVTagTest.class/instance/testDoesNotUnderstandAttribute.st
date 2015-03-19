tests
testDoesNotUnderstandAttribute
	[self tag doesNotUnderstandAttribute: 'test']
		on: HVAttributeNotUnderstood
		do: 
		[:error | 
		self assert: error htmlTag = self tag.
		self assert: error attribute = 'test']