html-alignment
columns: cols
	self attributeAt: 'border' put: '0';
		 attributeAt: 'cellpadding' put: '2';
		attributeAt: 'cellspacing' put: '0'.
	self table; tr; td.
	maxCol := cols.
	currentCol := 1