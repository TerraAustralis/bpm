private
doActionsOnExit: aCase
	"Case is being moved from this stage."

	exitCriteria do: [:criterion | criterion actionOnExitForExit: aCase].
	enterCriteria do: [:criterion | criterion actionOnExitForEnter: aCase]