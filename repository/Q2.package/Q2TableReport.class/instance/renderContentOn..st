as yet unclassified
renderContentOn: html

"	html cssClass: 'reportTable'."
	super renderContentOn: html.
	self batchedList renderOn: html.
	currentRows := nil.