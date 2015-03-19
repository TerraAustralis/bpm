simple messages
message: message linkLocal: link
	"Return a single page with a message and a back link relative to this view."

	^self message: message linkLocal: link text: 'Back'