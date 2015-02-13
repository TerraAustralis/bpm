gathering statistics
gatherCaseStatsFrom: caseStatsCalculator	
"extract statistics just calculated by input caseStatsCalculator.  Note timed results are summed.  Averages can be computed later"

	numCreatedCases		:= numCreatedCases			+ caseStatsCalculator wasCreated card.
	numOpenCases			:= numOpenCases			+ caseStatsCalculator isOpen card.
	numOpenedCases			:= numOpenedCases			+ caseStatsCalculator wasOpened card.
	numClosedCases			:= numClosedCases			+ caseStatsCalculator wasClosed card.
	numReopenedCases		:= numReopenedCases		+ caseStatsCalculator wasReopened card.
	numResolvedCases		:= numResolvedCases			+ caseStatsCalculator wasResolved card.
	numResponsibleSetCases	:= numResponsibleSetCases	+ caseStatsCalculator responsibleWasSet card.

	(caseStatsCalculator wasOpenedForFirstTime)	ifTrue:	[totalTimeToOpen := totalTimeToOpen + caseStatsCalculator timeToOpen].
	(caseStatsCalculator wasResponsibleSet)	ifTrue:	[totalTimeToSetResponsible := totalTimeToSetResponsible + caseStatsCalculator timeToSetResponsible].

	(caseStatsCalculator wasClosed) ifTrue:  [
		totalTimeToClose := totalTimeToClose	+ caseStatsCalculator timeToClose.
		totalPeriodOpen := totalPeriodOpen	+ caseStatsCalculator periodOpen].

	(caseStatsCalculator wasResolved) ifTrue: [
		totalTimeToResolution := totalTimeToResolution + caseStatsCalculator timeToResolve.
		totalPeriodForResolutionValidation := totalPeriodForResolutionValidation + caseStatsCalculator timeToValidateResolution].