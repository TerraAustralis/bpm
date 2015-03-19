as yet unclassified
testXmlLang
	self
		shouldnt: [self tag xmlLang: 'it']
		understandAttribute: 'xml:lang'