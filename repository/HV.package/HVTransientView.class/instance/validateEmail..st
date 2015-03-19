utilities
validateEmail: aString
	"Validate that <aString> conforms to at least this syntax:
		'something @ something . something'
	"

	| s at dot |
	s := aString withBlanksTrimmed.
	at := aString indexOf: $@.
	dot := s indexOf: $. startingAt: at.
	((dot * at) = 0) ifTrue:[^false].
	(at > 1) & (at < dot) & (dot < s size) ifFalse:[^false].
	^true