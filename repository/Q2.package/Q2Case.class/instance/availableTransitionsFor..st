workflow
availableTransitionsFor: aUser
	"Return all possible transitions that the given
	user can perform at this time."

	^(self validateTransitionsForUser: aUser in: Q2TransitionValidationResult new) availableTransitions