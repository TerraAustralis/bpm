html-links
getLink: relativeUrl text: text view: aView
	"Return a local HTML link to the given view."

	^self getLink: (aView originalUrlFor: relativeUrl) text: text