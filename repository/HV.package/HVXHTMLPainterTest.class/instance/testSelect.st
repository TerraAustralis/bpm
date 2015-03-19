tests
testSelect
	| form |
	canvas form with: [canvas select with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'