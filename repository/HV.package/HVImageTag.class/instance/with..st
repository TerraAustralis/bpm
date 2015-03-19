printing
with: aBlock
	self attributeAt: 'src' ifAbsent: [self attributeError: 'src not set'].
	self attributeAt: 'alt' ifAbsent: [self attributeError: 'alt not set'].
	^ super with: aBlock