rendering-debug
renderFocussedItemOn: html
	"this is for demo/debug"
	"if this method is not needed then neither is #selectedItem"

 
	html  text:  graphFormPreviousClickedItem printString.
	html break.

	html  text:  graphFormClickedItem printString.
	html break.
	html  text:  self selectedItem printString