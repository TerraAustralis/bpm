html creation
canvas
	"Create a standard canvas (newer low level render framework)."

	currentCanvas := HVXHTMLCanvas request: request view: self.
	^ currentCanvas