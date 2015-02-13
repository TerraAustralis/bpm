accessing
at: keyString
	^ self at: keyString ifAbsent: [self error: 'No value specified for key in section']