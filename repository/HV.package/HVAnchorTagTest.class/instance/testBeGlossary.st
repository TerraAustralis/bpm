tests
testBeGlossary
	self should:
		[self tag
			beGlossary;
			with: []]
	addAttribute: 'rel'
	withValue: 'Glossary'