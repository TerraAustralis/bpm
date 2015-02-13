private
doActionsOnEnter: aCase
	"Case is being moved to this stage."

	exitCriteria do: [:criterion | criterion actionOnEnterForExit: aCase].
	enterCriteria do: [:criterion | criterion actionOnEnterForEnter: aCase]