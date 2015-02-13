value and cache
storeXmlFromTarget: aTarget on: writer
	| value |
	value := self valueFromTarget: aTarget ifAbsent: [writer startTag: 'td'; endEmptyTag: 'td'].
	writer startTag: 'td'; endTag.
	self storeXmlValue: value on: writer.
	writer endTag: 'td'.
	^true