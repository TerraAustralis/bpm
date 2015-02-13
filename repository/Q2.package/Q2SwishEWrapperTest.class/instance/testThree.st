tests
testThree

	self index: 'foo foo2' with: 'bar'.
	self index: 'foo2 foo3 foe' with: 'baz'.
	self search: 'fo*' shouldFind: {'bar'. 'baz'}.
	self search: 'foo*' shouldFind: {'bar'. 'baz'}.
	self search: 'foo2*' shouldFind: {'bar'. 'baz'}.
	self search: 'foo3*' shouldFind: {'baz'}.
	self search: 'foo OR foo3' shouldFind: {'bar'. 'baz'}.
	self search: 'foo AND foo3' shouldFind: {}.
	self search: 'NOT (foo AND foo2)' shouldFind: {'baz'}.
	self search: 'foo AND NOT foo3' shouldFind: {'bar'}.
	self search: 'foo AND NOT foo2' shouldFind: {}.
	self search: '"foo foo2"' shouldFind: {'bar'}.
	self search: '"foo2 foo"' shouldFind: {}.
	"self search: 'fo?' shouldFind: {'bar'. 'baz'}." "Should work with 2.4.4 and up"
	"self search: 'f?o' shouldFind: {'bar'}."  "Should work with 2.4.4 and up"