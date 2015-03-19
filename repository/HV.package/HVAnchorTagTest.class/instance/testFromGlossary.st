tests
testFromGlossary
	self should:
		[self tag
			fromGlossary;
			with: []]
	addAttribute: 'rev'
	withValue: 'Glossary'