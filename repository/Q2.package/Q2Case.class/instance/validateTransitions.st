workflow
validateTransitions
	"Evaluate all transitions for current user. This involves permissions on case, target
	and source stages and transitions, roles of user in this case, form validation
	and workflow criteria of target stages and transitions."

	^self validateTransitionsForUser: self currentUser in: Q2TransitionValidationResult new