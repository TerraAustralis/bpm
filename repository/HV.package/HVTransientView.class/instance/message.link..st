simple messages
message: message link: link
	"Return a single page with a message and an absolute back link."

	| b |
	b := self builder.
	^b start; h1: message; link: link text: 'Back'; end; yourself