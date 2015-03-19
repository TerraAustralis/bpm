html-alignment
colTab
	currentCol = maxCol
		ifTrue:[self close; close; tr; td.
				currentCol := 1]
		ifFalse:[self close; td.
				currentCol := currentCol + 1]