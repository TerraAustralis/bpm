dispatching
urlFor: stringOrSymbol
	"Return a url String representing this view's
	current position within the url of the request
	with <stringOrSymbol> appended."

	^urlStream pathWith: stringOrSymbol