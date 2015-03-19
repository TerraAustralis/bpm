rendering
doPrintHtmlOn: stream
	"Render the TOC. If we have no toc to render,
	we act as a simple variable instead. After rendering
	we clean up any temporarily closed entries from the
	cookie."

	| expanded |
	toc ifNil:[ ^super doPrintHtmlOn: stream ]. "no items to render, take the value instead"
	expanded := self expanded.
	toc entries do: [:entry |
		(HVTOCEntryTreeRenderer on: entry parent: self)
			printHtmlOn: stream expanded: expanded level: 0 builder: builder].
	builder view clearJustClosed