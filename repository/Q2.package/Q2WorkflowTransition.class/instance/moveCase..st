workflow
moveCase: aCase
	"Validation should already have been made, we just check the most obvious things.
	Before the move is actually done we execute all exit/enter actions."

	(from = aCase stage and: [aCase stage includesTransition: self])
		ifFalse: [self error: 'Can not move case', aCase printString].

	from doActionsOnExit: aCase.
	self doActions: aCase.
	to doActionsOnEnter: aCase.

	aCase moveToStage: to