html-links
getLinkTop: relativeUrl text: text
	"Return a local HTML link to the top view."

	^self getLink: (self topView originalUrlFor: relativeUrl) text: text