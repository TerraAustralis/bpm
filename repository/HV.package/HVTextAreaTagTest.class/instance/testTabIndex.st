as yet unclassified
testTabIndex
	self should: 
	[self tag
		tabIndex: 42;
		with: []]
	addAttribute: 'tabindex'
	withValue: '42'