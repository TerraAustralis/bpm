simple messages
message: message text: text
	"Return a single page with a message and a back link to base page of this view."

	^self builder start; h1: message; linkDefault: text; end; yourself