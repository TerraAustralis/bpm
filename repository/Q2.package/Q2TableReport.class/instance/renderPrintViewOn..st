as yet unclassified
renderPrintViewOn: html
	| batchSize currentPage |
	"Back up batch size and current page, and force to render all items in list "
	batchSize := batchedList batchSize.
	batchedList batchSize: rows size.
	currentPage := batchedList currentPage.
	batchedList currentPage: 1.
	currentRows := nil.

	super renderContentOn: html.

	batchedList batchSize: batchSize.
	batchedList currentPage: currentPage.
	currentRows := nil.