fields
fieldWithKey: key ifAbsent: aBlock

	^fields detect: [:f | f privateKey = key ] ifNone: [ aBlock value ]