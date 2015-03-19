tests
testAccessKey
	self should: 
	[self tag
		accessKey: $a;
		with: []]
	addAttribute: 'accesskey'
	withValue: 'a'