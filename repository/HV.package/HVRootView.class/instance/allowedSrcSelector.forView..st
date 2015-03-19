dispatch
allowedSrcSelector: aSelector forView: aView
	"Answer true if it is ok to view the source
	of <aSelector> in the view <aView>.
	Default implementation is the same as for execution."

	^self allowedSelector: aSelector forView: aView