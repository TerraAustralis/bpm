tests
testRelationship
	self should:
		[self tag
			relationship: 'test';
			with: []]
	addAttribute: 'rel'
	withValue: 'test'