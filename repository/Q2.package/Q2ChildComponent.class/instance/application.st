hierarchy
application
	"All the way up to application."

	^self isApplication ifTrue: [self] ifFalse: [parent application]