tests
testImageInput
	canvas imageInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'image'