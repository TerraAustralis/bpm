calculating
computeCaseStatsFrom: periodStart to: periodEnd
		| processTxns processStatisticsCalculator processStats |

	processStats := Dictionary new.
	processTxns := self partitionTxnsFrom: periodStart to: periodEnd.
	processTxns associationsDo: [:assoc |
		processStatisticsCalculator := Q2ProcessStatisticsCalculator startTime: periodStart endTime: periodEnd.
		processStatisticsCalculator computeCaseStatsForProcess: assoc.
		processStats at: (assoc key) put: processStatisticsCalculator statisticsHolder.
		].

	^processStats