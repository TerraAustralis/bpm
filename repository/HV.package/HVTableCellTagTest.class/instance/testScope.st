tests
testScope
	self
		should:
			[self tag
				scope: 'col';
				with: []]
		addAttribute: 'scope'
		withValue: 'col'.