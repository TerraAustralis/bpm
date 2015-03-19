rendering
doPrintHtmlOn: stream
	"Render the TOC. If we have no toc to render,
	we act as a simple variable instead."

	| entries |
	toc ifNil:[ ^super doPrintHtmlOn: stream ]. "no items to render, take the value instead"
	entries := (rootEntry ifNil: [toc] ifNotNil: [rootEntry]) entries.
	entries do: [:entry |
		(HVTOCEntryRenderer on: entry parent: self)
			printHtmlOn: stream builder: builder vertical: vertical]