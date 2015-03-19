parent views
topView
	"Return the view that thinks it is a top view."

	^self isTopView
		ifTrue: [self]
		ifFalse: [parent topView]