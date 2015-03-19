as yet unclassified
testBeSubmit
	self
		should:
			[self tag
				beSubmit;
				with: []]
		addAttribute: 'type'
		withValue: 'submit'