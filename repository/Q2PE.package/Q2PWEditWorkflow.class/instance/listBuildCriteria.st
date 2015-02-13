building tables
listBuildCriteria
 
 
	| columns report  |

	report := (Q2TableReportWithFooter editor: self)
		rowPeriod: 1;
		rowColors: #('lightgrey' 'white' );
		footerSelector: #renderCriteriaTableFooterOn:.

	report batchedList batchSize: SmallInteger maxVal.

	columns := OrderedCollection new.
	"from"
	columns add: (Q2TableReportColumn renderBlock: [ :criterion :html | 
		 html strong: (rowCounter := rowCounter + 1).
	] title: '#').
	columns add: (Q2TableReportColumn renderBlock: [ :criterion :html | 
		 html text: (criterion class name copyAfter:$w )
	] title: 'Type').
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html |
		(self selected isStage and: [trans from = self selected]) ifFalse: [ 
			self renderInPlaceEditorFor: trans from on: html
		]
	] title: 'A').	

	"transition"
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html | 
		(self selected isStage and: [trans from = self selected]) ifFalse: [ 
			self renderSelectorFor: trans on: html
		].
	] title: '').
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html |
		(self selected isStage and: [trans from = self selected]) ifFalse: [ 
			self renderInPlaceEditorFor: trans  on: html
		]
	] title: 'Transition').		
	"to"
 	columns add: (Q2TableReportColumn renderBlock: [ :trans :html | 
		| which |
		which := (self selected isStage and: [ trans from = self selected ]) 
				ifTrue: [trans from] 
				ifFalse: [ trans to ].	
	 	self renderSelectorFor: which on: html
		] title: '').
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html |
		| which |
		which := (self selected isStage and: [ trans from = self selected ]) 
				ifTrue: [trans from] 
				ifFalse: [ trans to ].	
		self renderInPlaceEditorFor: which on: html
	] title: 'B').		report columns: columns.
	"transition"
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html | 
		((self selected isStage and: [trans to = self selected]) or: [ self selected isStage not ]) ifFalse: [ 
			self renderSelectorFor: trans on: html
		]
	] title: '').
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html |
		((self selected isStage and: [trans to = self selected]) or: [ self selected isStage not ]) ifFalse: [ 
			self renderInPlaceEditorFor: trans  on: html
		]
	] title: 'Transition').		"to"
	"to"
 	columns add: (Q2TableReportColumn renderBlock: [ :trans :html | 
		((self selected isStage and: [trans to = self selected]) or: [ self selected isStage not ]) ifFalse: [ 
			self renderSelectorFor: trans to on: html
		].
	] title: '').
	columns add: (Q2TableReportColumn renderBlock: [ :trans :html |
		((self selected isStage and: [trans to = self selected]) or: [ self selected isStage not ]) ifFalse: [ 
		 	self renderInPlaceEditorFor: trans to on: html
		]
	] title: 'C').		report columns: columns.
	^ report