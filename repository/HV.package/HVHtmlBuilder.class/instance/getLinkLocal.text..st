html-links
getLinkLocal: relativeUrl text: text
	"Return a local HTML link to the view."

	^self getLink: (view originalUrlFor: relativeUrl) text: text