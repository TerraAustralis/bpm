deprecated
linkLocal: relativeUrl text: text
	"Return a local link to the view."

	self deprecated: 'Deprecated, use getLink* and link* methods in HVHtmlBuilder instead.'.
	^self link: (self urlFor: relativeUrl) text: text