as yet unclassified
fieldWithKey: key
	^ self fieldWithKey: key ifAbsent: [ self error: 'Unknown field' ].