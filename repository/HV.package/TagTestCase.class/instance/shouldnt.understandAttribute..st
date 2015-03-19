accessing
shouldnt: aBlock understandAttribute: aString
	self
		should: aBlock
		raise: HVAttributeNotUnderstood.
	aBlock
		on: HVAttributeNotUnderstood
		do: [:error | self assert: error attribute = aString]