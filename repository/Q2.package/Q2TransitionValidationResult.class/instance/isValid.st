nil
isValid
	"Return true if we do not have any denials or denied transitions."

	^self denials isEmpty and: [self deniedTransitions isEmpty]