basic markup
attributes: aCollection
	aCollection associationsDo: [:x | self attributeAt: x key put: x value]