html-links
getLinkParent: relativeUrl text: text
	"Return a local HTML link to the parent view."

	^self getLink: (view parent originalUrlFor: relativeUrl) text: text