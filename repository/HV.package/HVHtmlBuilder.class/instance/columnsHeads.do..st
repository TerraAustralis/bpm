html-alignment
columnsHeads: heads do: aBlock
	self attributeAt: 'cellpadding' put: '2';
		 attributeAt: 'cellspacing' put: '3'.
	self table; heads: heads; tableBody; tr; td.
	maxCol := heads size.
	currentCol := 1.
	aBlock value.
	self close; close; close; close