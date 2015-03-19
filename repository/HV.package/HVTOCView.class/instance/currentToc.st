table of contents
currentToc
	"Get the TOC for the request."

	^KomSession current attributes at: self tocSymbol ifAbsent: [nil]