object rendering
renderProcess: aProcess on: html
	"Render a Process, we make a link to view it."

	html anchor callback: [self application viewProcess: aProcess]; with: aProcess name