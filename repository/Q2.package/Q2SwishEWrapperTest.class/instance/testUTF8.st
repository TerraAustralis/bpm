tests
testUTF8

	self index: 'áéíóúõûúó foo åäöÅÄÖ' with: 'bar'.
	self search: 'áéíóúõûúó' shouldFind: {'bar'}.
	self search: 'foo' shouldFind: {'bar'}.
	self search: 'åäöÅÄÖ' shouldFind: {'bar'}.
	self search: 'äåöÅÄÖ' shouldFind: {}.