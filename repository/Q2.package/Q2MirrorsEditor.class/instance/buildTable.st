initialize-release
buildTable
	^Q2TableReport new
		rowPeriod: 1;
		rowColors: #('lightgrey' 'white' );
		columns: {
					(Q2TableReportColumn selector: #prefix title: 'Prefix').
					(Q2TableReportColumn selector: #name title: 'Name' onClick: [:mirror | self openView: mirror]).
					(Q2TableReportColumn selector: #ownerName title: 'Owner').
				}