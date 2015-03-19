dispatch
allowedSelector: aSelector forView: aView
	"Answer true if <aSelector> is ok to call from a URL
	to the view <aView>. Default implementation is to
	use the pluggable filter block."

	^selectorFilter copy value: aSelector value: aView