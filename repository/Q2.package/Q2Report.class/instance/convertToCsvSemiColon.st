files
convertToCsvSemiColon
	| xml csv |
	xml := fileName, '.xml'.
	csv := fileName, '.csv'.
	(self reportExists: csv )
		ifTrue: [Q2Log warn: 'File already(!) created: ', csv]
		ifFalse: [Q2CSVReportWithSemiColons parseDocumentFromFileNamed: (Q2Model reportsDirectory fullPathFor: xml)].
	^csv