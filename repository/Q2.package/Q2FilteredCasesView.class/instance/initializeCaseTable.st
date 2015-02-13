private
initializeCaseTable
	"By default we only make #subject clickable."

	| columns column |
	columns := OrderedCollection new.
	self tableCaseForm fields do: [:field |
		column := Q2FieldReportColumn for: field.
		field privateKey = #status ifTrue: [
			"add cell coloring based on status"
			column colorBlock: [:row :col |  (self model modelSettingAt: #Q2CaseColorSetting) caseColor: row].
		].
		field privateKey = #subject ifTrue: [
			column tooltipBlock: [:case :html | case tooltipOn: html].
			column clickBlock: [:aCase | self application viewCase: aCase]].
		columns add: column]. 
 
	table := Q2CaseTableReport new
				numberOfCases: self numberOfCases;
				rowPeriod: 1;
				rowColors: #('lightgrey' 'white' );
				columns: columns