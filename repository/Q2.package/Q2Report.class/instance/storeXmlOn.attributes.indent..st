xml
storeXmlOn: writer attributes: attributesCollection indent: i
	writer stream crtab: i.
	writer startTag: self xmlTag.
	attributesCollection ifNotNil: [attributesCollection do:[:each|
		writer stream crtab: i + 1.
		writer attribute: each key value: each value.
	]].
	writer endTag