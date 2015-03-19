tests
testAccessKey
	self should:
		[self tag
			accessKey: $t;
			with: []]
	addAttribute: 'accesskey'
	withValue: 't'