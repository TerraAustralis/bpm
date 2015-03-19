tests
testSubmitInput
	canvas submitInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'submit'