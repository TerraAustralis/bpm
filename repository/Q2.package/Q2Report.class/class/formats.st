as yet unclassified
formats
	"Q2Report formatsClear"
	formats ifNil: [
		formats := Dictionary new.
		formats at: 'Xml' put: #convertToXml.
		formats at: 'Csv' put: #convertToCsv.
		formats at: 'Csv (with semicolons)' put: #convertToCsvSemiColon.
		formats at: 'Html' put: #convertToHtml
	].
	^formats