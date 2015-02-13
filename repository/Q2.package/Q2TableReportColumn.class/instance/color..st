as yet unclassified
color: aRow
	"return cell color for given row"
	^ colorBlock ifNotNil: [ colorBlock value: aRow value: self ]