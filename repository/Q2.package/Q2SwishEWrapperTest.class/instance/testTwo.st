tests
testTwo

	self index: 'foo foo2' with: 'bar'.
	self search: 'foo' shouldFind: {'bar'}.
	self search: 'foo2' shouldFind: {'bar'}.
	self search: 'foo3' shouldFind: { }.
	self index: 'foo2 foo3' with: 'baz'.
	self search: 'foo' shouldFind: {'bar'}.
	self search: 'foo2' shouldFind: {'bar'. 'baz'}.
	self search: 'foo3' shouldFind: { 'baz'}.
	self search: 'foo4' shouldFind: { }.