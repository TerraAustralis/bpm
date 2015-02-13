rendering
renderDividerOn: html
	html tableRow with: [
		html tableData colSpan: 3; with: [ html horizontalRule ] ]