printing
with: aBlock
	self attributeAt: 'xmlns' ifAbsentPut: self class xmlns.
	^ super with: aBlock