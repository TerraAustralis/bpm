cases
addCase: aCase
	"Case is being created, we set initial state needed.
	Since we are not coming via a transition here
	(see #moveCase:) we need to do actions on enter."

	self doActionsOnEnter: aCase.
	aCase stage: self.
	aCase setResponsible: self process nobodyUser.
	^aCase