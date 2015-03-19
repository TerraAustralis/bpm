deprecated
message: message linklocal: link
	"Return a single page with a message and a back link relative to this view."

	self deprecated: 'Deprecated, use #message:linkLocal: instead (capital L).'.
	^self message: message linkLocal: link