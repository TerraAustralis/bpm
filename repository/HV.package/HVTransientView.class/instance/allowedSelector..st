dispatching
allowedSelector: aSelector
	"Answer true if <aSelector> is ok to call from a URL.
	Default implementation is to delegate to the rootView
	which represents this web application."

	^self rootView allowedSelector: aSelector forView: self