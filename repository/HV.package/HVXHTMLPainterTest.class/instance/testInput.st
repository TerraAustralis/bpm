tests
testInput
	| form |
	canvas form with: [canvas input with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'