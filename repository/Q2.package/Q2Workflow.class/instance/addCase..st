cases
addCase: aCase
	"The case is being added into the workflow
	coming from the scratch stage in this Process.
	Since we are not coming via a transition here
	(see #moveCase:) we need to do actions on enter
	and exit."

	scratchStage doActionsOnExit: aCase.
	self inbox doActionsOnEnter: aCase.
	self inbox addCase: aCase