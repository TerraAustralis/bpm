tests
testTextArea
	| form |
	canvas form with: [canvas textArea with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'