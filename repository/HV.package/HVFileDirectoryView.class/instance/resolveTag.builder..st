swikification
resolveTag: aTag builder: aBuilder
	"Translate the String <aTag> to something, like a link during
	parsing of Swiki style Strings. Returning false means we did
	not handle it. If a subclass handles it by producing something
	on the builder it should return true."

	^false