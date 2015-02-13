validation
validationMessage
	"If this criterion is not met then this message should return an explanation.
	Implemented differently by subclasses, since this default implementation is pretty vague."

	^'criterion ', self displayString, ' needs to be met'