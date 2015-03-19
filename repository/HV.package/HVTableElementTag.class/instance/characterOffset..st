attributes - table
characterOffset: anInteger 
	self attributeAt: 'char'
		ifAbsent: [self attributeError: 'Must specify alignment character'].
	self attributeAt: 'charoff' putNumber: anInteger