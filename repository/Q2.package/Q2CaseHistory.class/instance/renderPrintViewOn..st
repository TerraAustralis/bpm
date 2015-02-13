render
renderPrintViewOn: html
	html heading level2; with: label.
	table rows: self historyItems.
	table renderPrintViewOn: html.