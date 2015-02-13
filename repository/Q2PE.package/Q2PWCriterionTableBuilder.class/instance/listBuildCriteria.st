as yet unclassified
listBuildCriteria
 
 
	| columns report  |

	report := (Q2TableReportWithFooter editor: self)
		rowPeriod: 1;
		rowColors: #('lightgrey' 'white' ).

	report batchedList batchSize: SmallInteger maxVal.

	columns := OrderedCollection new.
	"from"
	columns add: (WAReportColumn new 
						title: '#';
						valueBlock: [ :row | row printString , '.' ]).
	 	
	report columns: columns.
	^ report