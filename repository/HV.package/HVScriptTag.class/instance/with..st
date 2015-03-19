printing
with: aBlock
	self attributeAt: 'type' ifAbsent: [self attributeError: 'type not set'].
	^ super with: aBlock