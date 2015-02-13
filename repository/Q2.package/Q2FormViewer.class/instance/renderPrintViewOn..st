rendering
renderPrintViewOn: html
	printMode := true.
	self renderHeadingOn: html.
	self refreshCacheIfNeeded.
	renderer := html.
	self renderFieldsOn: html.
	printMode := false.