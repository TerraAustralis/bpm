tests
testMultipleInputs
	| form |
	canvas form with:
		[canvas textInput with: [].
		canvas textInput with: []].
	form := self elements first.
	self
		assertAttribute: 'name'
		ofTag: form elements first
		isEqualTo: '1-1'.
	self
		assertAttribute: 'name'
		ofTag: form elements second
		isEqualTo: '1-2'