as yet unclassified
process: aProcess
	process := aProcess.
	"update forms view"
	formsView := (Q2FormsView parent: self) formsModel: process.