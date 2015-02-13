files
convertToCsv
	| xml csv |
	xml := fileName, '.xml'.
	csv := fileName, '.csv'.
	(self reportExists: csv )
		ifTrue: [Q2Log warn: 'File already(!) created: ', csv]
		ifFalse: [Q2CSVReport parseDocumentFromFileNamed: (Q2Model reportsDirectory fullPathFor: xml)].
	^csv