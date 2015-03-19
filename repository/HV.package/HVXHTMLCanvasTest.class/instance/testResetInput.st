tests
testResetInput
	canvas resetInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'reset'