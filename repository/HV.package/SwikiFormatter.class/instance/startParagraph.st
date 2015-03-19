private
startParagraph
	"Start the paragraph."

	renderParagraphs ifTrue: [
		inParagraph := true.
		builder p]