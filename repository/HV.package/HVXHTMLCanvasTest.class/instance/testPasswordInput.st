tests
testPasswordInput
	canvas passwordInput with: [].
	self assertTagName: #input.
	self assertInputTagType: 'password'