tests
testTextInput
	canvas textInput with: [].
	self assertTagName: #input.
	self assertInputTagType: 'text'