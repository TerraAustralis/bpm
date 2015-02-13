calculating statistics
computeCaseStatsForProcess: anAssociation
"Computes statistics for input process (anAssociation key) and its transactions (anAssociation value).
 by computing stats for the process cases and summing the results.
See class comment in Q2CaseStatisticsCalculator.
"
		| process caseTxns caseStatsCalculator |

	process := anAssociation key.
	caseStatsCalculator := Q2CaseStatisticsCalculator new.
	caseTxns _ self partitionTxns: anAssociation value byCases: process cases.
	caseTxns associationsDo: [:assoc |
		caseStatsCalculator computeCaseStats: assoc.
		statisticsHolder gatherCaseStatsFrom: caseStatsCalculator].