render
buildHistoryTable
	| columns |
	columns := OrderedCollection new.
	TableForm fields do: [:field | columns add: (Q2FieldReportColumn for: field)].
	^(Q2TableReport new)
		rowPeriod: 1;
		rowColors: #('lightgrey' 'white' );
		columns: columns