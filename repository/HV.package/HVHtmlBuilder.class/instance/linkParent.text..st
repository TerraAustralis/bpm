html-links
linkParent: relativeUrl text: text
	"Add a local link to the parent view."

	^self link: (view parent originalUrlFor: relativeUrl) text: text