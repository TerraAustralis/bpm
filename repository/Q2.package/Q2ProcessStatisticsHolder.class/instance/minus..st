arithmetic
minus: anotherMe

	(startTime = anotherMe startTime) ifFalse: [
		self error: 'Start times must match for Interval to be reduced'].
	(endTime >= anotherMe endTime) ifFalse: [
		self error: 'Operation results in negative duration'].
	startTime := anotherMe endTime.
	(endTime = anotherMe endTime) ifTrue: [		"intervals are the same so we expect all values to be 0"
		numOpenCases := numOpenCases - anotherMe numOpenCases].

	numCreatedCases		:= numCreatedCases			- anotherMe numCreatedCases.
	numOpenedCases			:= numOpenedCases			- anotherMe numOpenedCases.
	numClosedCases	 		:= numClosedCases			- anotherMe numClosedCases.
	numReopenedCases		:= numReopenedCases		- anotherMe numReopenedCases.
	numResolvedCases 		:= numResolvedCases			- anotherMe numResolvedCases.
	numResponsibleSetCases	:= numResponsibleSetCases	- anotherMe numResponsibleSetCases.

	totalTimeToOpen				:= totalTimeToOpen			- anotherMe totalTimeToOpen.
	totalTimeToClose				:= totalTimeToClose			- anotherMe totalTimeToClose.
	totalPeriodOpen				:= totalPeriodOpen			- anotherMe totalPeriodOpen.
	totalTimeToSetResponsible	:= totalTimeToSetResponsible	- anotherMe totalTimeToSetResponsible.
	totalTimeToResolution		:= totalTimeToResolution		- anotherMe totalTimeToResolution.
	totalPeriodForResolutionValidation := totalPeriodForResolutionValidation - anotherMe totalPeriodForResolutionValidation.