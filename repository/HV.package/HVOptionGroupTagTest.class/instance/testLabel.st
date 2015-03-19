as yet unclassified
testLabel
	self
		should:
			[self tag
				label: 'test';
				with: []]
		addAttribute: 'label'
		withValue: 'test'