tests
testHiddenInput
	canvas hiddenInput  with: [].
	self assertTagName: #input.
	self assertInputTagType: 'hidden'