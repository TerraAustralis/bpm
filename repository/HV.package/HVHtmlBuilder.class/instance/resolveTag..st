swikification
resolveTag: aTag
	"Translate the String <aTag> to something, like a link.
	We delegate to the view."

	^view resolveTag: aTag builder: self