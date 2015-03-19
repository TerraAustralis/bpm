html-links
linkLocal: relativeUrl text: text
	"Add a local link to the view."

	^self link: (view originalUrlFor: relativeUrl) text: text