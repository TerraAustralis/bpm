tests
testOne

	self index: 'foo' with: 'bar'.
	self search: 'foo' shouldFind: { 'bar' }.
	self search: 'bar' shouldFind: { }.