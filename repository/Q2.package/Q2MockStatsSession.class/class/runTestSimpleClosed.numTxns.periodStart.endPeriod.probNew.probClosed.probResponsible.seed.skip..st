run tests
runTestSimpleClosed: numCases numTxns: numTxns periodStart: periodStart endPeriod: periodEnd probNew: probNew probClosed: probClosed probResponsible: probResponsible seed: seed skip: numSkip
"Run a test in which a number of cases and transactions are created for a process and then statistics are generated for each
case by two different methods and the results compared to ensure that they are the same."

	| process statisticsCalculator statistics statisticsHolder |

	self initializeStatistics: seed.
	process := Q2MockProcess new: 'simpleClosed'.
	processes add: process.
	self	buildProcessSimpleClosed: process 
		numCases: numCases
		numTxns: numTxns
		periodStart: periodStart 
		endPeriod: periodEnd 
		probNew: probNew 
		probClosed: probClosed
		probResponsible: probResponsible.

	statisticsCalculator := Q2StatisticsCalculator new: self.
	statistics := statisticsCalculator verifyCaseStatsFrom: periodStart to: periodEnd skip: numSkip.
	statistics := statisticsCalculator computeCaseStatsFrom: periodStart to: periodEnd.
	statisticsHolder := statistics anyOne.
	(statisticsHolder caseGrowth = 0) ifFalse: [
		self error: 'Invalid count of case growth'].
	(statisticsHolder numClosedCases = numCases) ifFalse: [
		self error: 'Invalid count of closed cases at end'].
	^statisticsHolder.