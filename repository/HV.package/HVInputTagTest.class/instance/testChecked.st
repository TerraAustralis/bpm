tests
testChecked
	self
		should: 
			[self tag
				checked;
				with: []]
	 	addAttribute: 'checked'
		withValue: 'checked'