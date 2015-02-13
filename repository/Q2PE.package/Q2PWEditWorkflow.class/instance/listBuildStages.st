building tables
listBuildStages
 
 
	| columns report  |

	report := (Q2TableReportWithFooter editor: self)
		rowPeriod: 1;
		rowColors: #('lightgrey' 'white' ).

	report batchedList batchSize: SmallInteger maxVal.
	
	columns := OrderedCollection new.

	columns add: (Q2TableReportColumn renderBlock: [ :stage :html | 
		self renderSelectorFor: stage on: html
	] title: '').
	columns add: (Q2TableReportColumn renderBlock: [ :stage :html |
		self renderInPlaceEditorFor: stage on: html
	] title: 'Stage').
	columns add: (Q2TableReportColumn renderBlock: [ :stage :html |
		self renderStatusSelectFor: stage on: html
	] title: 'Status').
	columns add: (Q2TableReportColumn renderBlock: [ :stage :html |
		self renderTransitionFor: stage on: html
	] title: 'Transitions').
	report columns: columns.



	^ report