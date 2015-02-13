files
convertToHtml
	| xml file |
	xml := fileName, '.xml'.
	file := fileName, '.html'.
	(self reportExists: file )
		ifTrue: [Q2Log info: 'File already(!) created: ', file]
		ifFalse: [Q2HtmlReport parseDocumentFromFileNamed: (Q2Model reportsDirectory fullPathFor: xml)].
	^file