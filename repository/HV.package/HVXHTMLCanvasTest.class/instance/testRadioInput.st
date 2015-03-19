tests
testRadioInput
	canvas radioInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'radio'