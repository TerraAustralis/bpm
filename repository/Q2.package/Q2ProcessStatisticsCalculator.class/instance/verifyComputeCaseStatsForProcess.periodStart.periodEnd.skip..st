verifying
verifyComputeCaseStatsForProcess: anAssociation periodStart: periodStart  periodEnd: periodEnd skip: numSkip
		| caseStatsCalculator1 caseStatsCalculator2 process periodTxns cases caseTxns alternateHolder zeroedHolder count |
"Compute the statistics for the transactions specified of the process specified for each case of the process using two different methods.
Then verify that the statistics computed for each case are the same for each approach and generate an error if they are not. 
"
	process := anAssociation key.
	periodTxns := anAssociation value.
	cases := process cases.
	caseTxns := self partitionTxns: periodTxns byCases: cases.
	(cases size = caseTxns size) ifFalse:  [self error: 'cases have been lost'].

	caseStatsCalculator1 := Q2CaseStatisticsCalculator new.
	caseStatsCalculator2 := Q2CaseStatisticsCalculator new.
	alternateHolder := statisticsHolder class startTime: periodStart endTime: periodEnd.
	count := 0.
	caseTxns associationsDo: [:assoc |
		(count >= numSkip) ifTrue: [
			caseStatsCalculator1 alternateComputeCaseStats: assoc key  periodStart: periodStart  periodEnd: periodEnd.
			alternateHolder gatherCaseStatsFrom: caseStatsCalculator1.
			caseStatsCalculator2 computeCaseStats: assoc.
			statisticsHolder gatherCaseStatsFrom: caseStatsCalculator2.
			zeroedHolder := statisticsHolder - alternateHolder.
			zeroedHolder verifyIsZero.
			].
		count := count + 1.
		].