rendering
doPrintHtmlOn: stream
	"Try printing it."

	self childrenDo: [:ea | ea printHtmlOn: stream].
	value ifNotNil: [value printHtmlOn: stream]