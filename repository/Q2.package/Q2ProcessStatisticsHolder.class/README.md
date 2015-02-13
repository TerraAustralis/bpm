I hold (mostly tabulated) statistics data computed by a Q2ProcessStatisticsCalculator for a single process.  
The data I hold can be stored in the database and retrieved again before final tabulation is done.
Final tablulation involves computing averages from totals which I do.

instance variables:    (DP -->  during period (endTime - startTime)
startTime:				start time for stats computed
endTime:				end time for stats computed.
numCreatedCases:		total number of cases created DP.
numOpenCases:			total number of cases open at endTime.
numOpenedCases:		total number of cases opened DP.
numClosedCases:			total number of cases closed DP.
numReopenedCases:		total number of cases reopened DP.
numResolvedCases:		total number of cases resolved DP.
numResponsibleSetCases:	total number of cases had responsible set for first time DP.
totalTimeToOpen:						total time to open all opened cases
totalTimeToSetResponsible:			total time set responsible for numResponsibleSetCases cases which had responsible set.
totalTimeToClose:						total time to close the numClosedCases that were closed.
totalPeriodOpen:						total time the numClosedCases that were closed remained open 
										(from time opened even if before startTime).
totalTimeToResolution				total time for the numResolvedCases resolved to be resolved
totalPeriodForResolutionValidation	total time for the numResolvedCases resolved to be validated (closed) after resolution.