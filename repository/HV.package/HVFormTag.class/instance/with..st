printing
with: aBlock
	self attributeAt: 'action' ifAbsent: [self attributeError: '''action'' not set'].
	self attributeAt: 'method' ifAbsentPut: 'get'.
	^ super with: aBlock