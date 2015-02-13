as yet unclassified
renderContentOn: html 
	"View an existing case."

	html heading: label.

	editor renderPrintViewOn: html.
	html heading with: [ html break].
	noteview renderPrintViewOn: html.