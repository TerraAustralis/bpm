verifying
verifyIsZero
	| zeroErrorBlock |

	zeroErrorBlock := [:zero | zero isZero ifFalse: [self error: 'Statistics are not zeroed'] ].
	{
	 (endTime - startTime) . numCreatedCases . numOpenCases . numOpenedCases . numClosedCases . numReopenedCases .
      numResolvedCases . numResponsibleSetCases . totalTimeToOpen . totalTimeToSetResponsible . 
      totalTimeToClose . totalPeriodOpen . totalTimeToResolution . totalPeriodForResolutionValidation
	} do: [:each | 
		zeroErrorBlock value: each].