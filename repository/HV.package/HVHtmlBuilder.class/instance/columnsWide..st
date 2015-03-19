html-alignment
columnsWide: cols
	self attributeAt: 'border' put: '0';
		attributeAt: 'cellpadding' put: '0';
		attributeAt: 'cellspacing' put: '3';
		attributeAt: 'width' put: '100%'.
	self table; tr; td.
	maxCol := cols.
	currentCol := 1