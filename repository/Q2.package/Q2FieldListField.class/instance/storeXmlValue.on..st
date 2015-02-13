rendering
storeXmlValue: aValue on: writer
	"Just render the children as an ordered list."
	writer startTag: 'ol'; endTag.
	aValue do: [:each | 
		writer startTag: 'li'; endTag.
		field storeXmlValue: each on: writer.
		writer endTag: 'li'].
	writer endTag: 'ol'