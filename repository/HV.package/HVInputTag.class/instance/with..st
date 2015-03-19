printing
with: aBlock
	self attributeAt: 'type' ifAbsentPut: 'text'.
	^ super with: aBlock