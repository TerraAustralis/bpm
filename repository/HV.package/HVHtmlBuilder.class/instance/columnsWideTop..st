html-alignment
columnsWideTop: cols
	self attributeAt: 'border' put: '0';
		attributeAt: 'cellpadding' put: '0';
		attributeAt: 'cellspacing' put: '3';
		attributeAt: 'width' put: '100%'.
	self table; attributeAt: 'valign' put: 'top'; tr; td.
	maxCol := cols.
	currentCol := 1