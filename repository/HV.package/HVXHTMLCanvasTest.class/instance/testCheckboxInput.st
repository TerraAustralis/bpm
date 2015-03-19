tests
testCheckboxInput
	canvas checkboxInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'checkbox'