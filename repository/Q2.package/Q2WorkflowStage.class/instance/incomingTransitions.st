workflow
incomingTransitions
	"Return all transitions with me as dest."

	^transitions select: [:t | t to == self]