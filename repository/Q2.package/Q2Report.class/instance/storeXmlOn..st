xml
storeXmlOn: writer
	| fields objects |
	fields := reportDefinition fields.
	objects := filter
		ifNil: [reportDefinition allObjects]
		ifNotNil: [filter filter: reportDefinition allObjects].

	self storeXmlOn: writer attributes: self attributes indent: 0.
	objects do: [:object |
		writer startTag: 'tr'; endTag.
		fields do: [:field | 
			self storeXmlOn: writer field: field object: object indent: 2
		].
		writer endTag: 'tr'.
	].
	writer endTag: 'report'