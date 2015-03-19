printing
with: aBlock
	self attributeAt: 'dir' ifAbsent: [self attributeError: '''dir'' not set'].
	^ super with: aBlock