workflow
outgoingTransitions
	"Return all transitions with me as source."

	^transitions select: [:t | t from == self]