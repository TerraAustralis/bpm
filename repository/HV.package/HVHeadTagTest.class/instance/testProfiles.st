tests
testProfiles
	self should:
	[self tag
		profiles: {'test1'. 'test2'};
		with: []]
	addAttribute: 'profile'
	withValue: 'test1 test2'