tests
testUsePost
	self should:
		[self tag
			usePost;
			with: []]
	addAttribute: 'method'
	withValue: 'post'