as yet unclassified
testXmlLang
	self should:
	[self tag
		xmlLang: 'it';
		with: []]
	addAttribute: 'xml:lang'
	withValue: 'it'