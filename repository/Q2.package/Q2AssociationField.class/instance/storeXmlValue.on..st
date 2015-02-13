value and cache
storeXmlValue: aValue on: writer
	writer startTag: 'assoc'; endTag.
	writer startTag: 'key'; endTag; pcData: aValue key displayString; endTag: 'key'.
	writer startTag: 'value'; endTag; pcData: aValue value displayString; endTag: 'value'.
	writer endTag: 'assoc'.