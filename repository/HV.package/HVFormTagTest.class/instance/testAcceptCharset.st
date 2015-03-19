tests
testAcceptCharset
	self should:
		[self tag
			acceptCharset: 'test';
			with: []]
	addAttribute: 'accept-charset'
	withValue: 'test'