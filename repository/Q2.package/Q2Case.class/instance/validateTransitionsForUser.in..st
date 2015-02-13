workflow
validateTransitionsForUser: aUser in: aValidation
	"Evaluate all transitions for given user. This involves permissions on case, target
	and source stages and transitions, roles of user in this case, form validation (not yet)
	and workflow criteria of target stages and transitions."

	"User must be able to write stage and case in order to make a transition."
	(self writeCheck) ifNil: [
		aValidation denial: aUser displayString, ' has no write permission for case ', self displayString].

	(stage writeCheck) ifNil: [
		aValidation denial: aUser displayString, ' has no write permission for current stage "', stage displayString, '" of case ', self displayString].

	stage outgoingTransitions do: [:trans |
		trans validateForUser: aUser andCase: self in: aValidation].

	^aValidation