html-alignment
colTabTop
	currentCol = maxCol
		ifTrue:[self close; close; attributeAt: 'valign' put: 'top'; tr; td.
				currentCol := 1]
		ifFalse:[self close; td.
				currentCol := currentCol + 1]