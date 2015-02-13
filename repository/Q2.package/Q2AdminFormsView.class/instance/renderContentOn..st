as yet unclassified
renderContentOn: html 
	"Copied from Q2Component, hard to refactor this right now."

	html heading: label.
	self checkAndRenderIntroductionOn: html.
	super renderContentOn: html