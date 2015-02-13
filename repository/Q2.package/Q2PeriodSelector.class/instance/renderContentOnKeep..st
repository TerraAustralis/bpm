rendering
renderContentOnKeep: html
	"html text: 'Hello stats input controls world'"

	html heading level: 3; with: 'Dates'.
	html form: [
		html table: [
			html tableRow: [
				html tableData: 'From'; tableData: startDate].
			html tableRow: [
				html tableData: 'To'; tableData: endDate]].
		html submitButton
			callback: [self periodAccept];
			text: 'Compute period'.
		].





	"html render: WADateSelectorTest new."
	"html text: 'From:  '.  
		html render: WADateSelector new.


	html table:  [
		html tableRow: [
			html tableData with:  [html text: 'From:  '].  
			html tableData verticalAlign: 'top'; id: 'periodStart';    with:  [html render: WADateSelector new] ].
		html tableRow: [
			html tableData with:  [html text: 'To:    '].
			html tableData id: 'periodEnd';    with:  [html render: WADateSelector new] ].
		html tableRow:  [
			html tableData id: 'periodSubmit';   with:  [html submitButton text: 'Plot Graph'] ].
		].

 Unmatched comment quote ->	"