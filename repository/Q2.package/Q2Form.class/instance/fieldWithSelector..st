fields
fieldWithSelector: aSelector

	^fields detect: [:f | f selector = aSelector ] ifNone: [nil]