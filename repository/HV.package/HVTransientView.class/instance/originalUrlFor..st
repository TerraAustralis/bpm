dispatching
originalUrlFor: stringOrSymbol
	"Return a url String representing this view's
	original position within the url of the request
	with <stringOrSymbol> appended."

	| curPos result |
	curPos := urlStream position.
	urlStream position: urlOriginalPosition.
	result := urlStream pathWith: stringOrSymbol.
	urlStream position: curPos.
	^result