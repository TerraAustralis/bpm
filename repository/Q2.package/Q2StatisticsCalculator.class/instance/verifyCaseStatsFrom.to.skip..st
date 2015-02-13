verifying
verifyCaseStatsFrom: periodStart to: periodEnd skip: numSkip
"Compute statistics for processes whose cases contain at least one of 
the transactions that occured during the period specified.
First the process and case containing each transaction must be determined.
Then verification is applied to each process (and eventually each case of each process.
"
		| processTxns processStatisticsCalculator |

	processTxns := self partitionTxnsFrom: periodStart to: periodEnd.
	processTxns associationsDo: [:assoc |
		processStatisticsCalculator := Q2ProcessStatisticsCalculator startTime: periodStart endTime: periodEnd.
		processStatisticsCalculator verifyComputeCaseStatsForProcess: assoc periodStart: periodStart  periodEnd: periodEnd skip: numSkip.
		].