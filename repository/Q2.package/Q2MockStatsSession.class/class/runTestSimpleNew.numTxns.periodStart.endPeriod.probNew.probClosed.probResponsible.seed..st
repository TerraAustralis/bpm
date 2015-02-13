run tests
runTestSimpleNew: numCases numTxns: numTxns periodStart: periodStart endPeriod: periodEnd probNew: probNew probClosed: probClosed probResponsible: probResponsible seed: seed
"Untested.  Can be discarded.  Or see comments in method buildProcessSimpleNew:,,,."
	| process statisticsCalculator statistics statisticsHolder |

	self initializeStatistics: seed.
	process := Q2MockProcess new: 'simpleOpen'.
	processes add: process.
	self	buildProcessSimpleNew: process 
		numCases: numCases
		numTxns: numTxns
		periodStart: periodStart 
		endPeriod: periodEnd 
		probNew: probNew 
		probClosed: probClosed
		probResponsible: probResponsible.

	statisticsCalculator := Q2StatisticsCalculator new: self.
	statisticsCalculator verifyCaseStatsFrom: periodStart to: periodEnd.
	statistics := statisticsCalculator computeCaseStatsFrom: periodStart to: periodEnd.
	statisticsHolder := statistics anyOne.
	(statisticsHolder caseGrowth = numCases) ifFalse: [
		self error: 'Invalid count of case growth'].
	(statisticsHolder numOpenCases = numCases) ifFalse: [
		self error: 'Invalid count of open cases at end'].
	^statisticsHolder.