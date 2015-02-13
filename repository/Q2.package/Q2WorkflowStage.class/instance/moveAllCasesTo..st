cases
moveAllCasesTo: aStage
	"Move all cases to given stage disregarding constraints (criteria and available transitions)
	and their actions on exit/enter."

	self cases do: [:each | each moveToStage: aStage]