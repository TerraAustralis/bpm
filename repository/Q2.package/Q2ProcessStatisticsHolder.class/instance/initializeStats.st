initialize
initializeStats

	numCreatedCases		:= 0.
	numOpenCases			:= 0.
	numOpenedCases			:= 0.
	numClosedCases			:= 0.
	numReopenedCases		:= 0.
	numResolvedCases		:= 0.
	numResponsibleSetCases	:= 0.

	totalTimeToOpen 			:= Duration zero.
	totalTimeToSetResponsible	:= Duration zero.
	totalTimeToClose 				:= Duration zero.
	totalPeriodOpen				:= Duration zero.
	totalTimeToResolution		:= Duration zero.
	totalPeriodForResolutionValidation := Duration zero.