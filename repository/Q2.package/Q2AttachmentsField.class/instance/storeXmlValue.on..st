value and cache
storeXmlValue: aValue on: writer 
	writer startTag: 'ol'; endTag.
	aValue do: [:each | 
		writer startTag: 'li'; endTag.
		writer pcData: each localFileName.
		writer endTag: 'li'].
	writer endTag: 'ol'