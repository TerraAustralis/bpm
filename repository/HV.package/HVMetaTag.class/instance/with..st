printing
with: aBlock
	self attributeAt: 'content' ifAbsent: [self attributeError: 'content not set'].
	^ super with: aBlock