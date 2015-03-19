simple messages
message: message linkLocal: link text: text
	"Return a single page with a message and a back link relative to this view."

	| b |
	b := self builder.
	^b start; h1: message; linkLocal: link text: text; end; yourself