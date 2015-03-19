dispatching
allowedSrcSelector: aSelector
	"Answer true if it is ok to view the source for
	<aSelector> from a URL.
	Default implementation is to delegate to the rootView
	which represents this web application."

	^self rootView allowedSrcSelector: aSelector forView: self