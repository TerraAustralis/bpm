tests
testMultipleFormsAndInputs
	| form |
	canvas form with: [canvas textInput with: []].
	canvas form with: [canvas textInput with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'.
	form := self elements second.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '2-1'