verifying
alternateComputeCaseStatsForProcess: aProcess periodStart: periodStart  periodEnd: periodEnd
"
NOTE:  THIS METHOD SHOULD NOT BE USED TO COMPUTE STATS EXCEPT FOR TESTING PURPOSES.
Computes same values as #computeCaseStatsForProcess:periodStart:periodEnd:  (see comments there) but processes transactions in reverse order. See comment in alternateComputeCaseStats:periodStart:periodEnd:
"
		| caseStatsCalculator |

	caseStatsCalculator := Q2CaseStatisticsCalculator new.
	aProcess cases do: [:case |
		caseStatsCalculator alternateComputeCaseStats: case  periodStart: periodStart  periodEnd: periodEnd.
		statisticsHolder gatherCaseStatsFrom: caseStatsCalculator].