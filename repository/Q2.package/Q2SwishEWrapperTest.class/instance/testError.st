tests
testError

	self index: 'foo' with: 'bar'.
	self should: [ self search: '*' ] raise: Error.
	self should: [ self search: ')(' ] raise: Error.
	self should: [ self search: 'foo)' ] raise: Error.
	self should: [ self search: '(foo' ] raise: Error.