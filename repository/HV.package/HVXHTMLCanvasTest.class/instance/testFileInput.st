tests
testFileInput
	canvas fileInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'file'