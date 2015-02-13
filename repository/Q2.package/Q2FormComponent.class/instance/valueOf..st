set and get
valueOf: selector
	"Only buffered form components can use ids instead of selectors,
	so if we are not buffered we can safely use #perform:."

	^isBuffered
		ifFalse: [model perform: selector]
		ifTrue: [model valueOf: selector]