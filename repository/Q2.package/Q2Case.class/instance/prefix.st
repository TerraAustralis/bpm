accessing
prefix
	"Remove the trailing integer from name, if none - return nil."

	| prefix |
	prefix := name select: [:c | c isLetter].
	^prefix ifEmpty: [nil]