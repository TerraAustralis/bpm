render
renderTableOn: html
	"Recalculate table if needed and then render."

	| size |
	self reCalculateIfNeeded.
	html render: table.
	size := table totalSize.
	size = 0
		ifTrue: [html text: 'No cases found']
		ifFalse: [
			html text: 'Showing ', table startIndex printString, '-', table endIndex printString, ' of ', size printString]