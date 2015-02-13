testing
hasExactlyOneInput
	"true if exactly one State button is input"

	^(states select: [:each | each isInput]) size = 1