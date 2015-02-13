actions
actionOnEnterForExit: aCase 
	"Add my mandatory form - if not already added, since it will be needed to exit from this stage."

	(self isValidFor: aCase) ifFalse: [aCase addForm: target]