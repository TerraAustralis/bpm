tests
testButton
	| form |
	canvas form with: [canvas button with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'