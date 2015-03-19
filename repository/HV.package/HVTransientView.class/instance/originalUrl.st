dispatching
originalUrl
	"Return a url String representing this view's
	original position within the url of the request."

	| curPos result |
	curPos := urlStream position.
	urlStream position: urlOriginalPosition.
	result := urlStream path.
	urlStream position: curPos.
	^result