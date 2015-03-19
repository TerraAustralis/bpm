tests
testProfile
	self should:
	[self tag
		profile: 'test';
		with: []]
	addAttribute: 'profile'
	withValue: 'test'