printing
with: aBlock
	self attributeAt: 'type' ifAbsentPut: 'submit'.
	^ super with: aBlock