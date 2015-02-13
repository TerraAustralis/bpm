run tests
runTestForDays: numDays numCases: numCases numTxns: numTxns probNew: probNew probClosed: probClosed probResponsible: probResponsible seed: seed
	| process statisticsCalculator statistics statisticsHolder periodStart periodEnd dayStart dayEnd dayStatsHolders |

	self initializeStatistics: seed.
	process := Q2MockProcess new: 'mulipleDays'.
	processes add: process.
	periodEnd _ self yesterdayEndTime.
	periodStart _ periodEnd - (Duration days: numDays).
	
	self	buildProcess: process 
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
	(statisticsHolder caseGrowth = (numCases - statisticsHolder numClosedCases) ) ifFalse: [
		self error: 'Invalid count of case growth'].
	
	dayStart _ periodStart.
	dayEnd _ periodStart + (Duration days: 1).
	dayStatsHolders _ Array new: numDays.
	1 to: numDays do:  [:index  |
		statisticsCalculator verifyCaseStatsFrom: dayStart to: dayEnd.
		dayStatsHolders at: index put: ( (statisticsCalculator computeCaseStatsFrom: dayStart to: dayEnd) anyOne).
		dayStart _ dayEnd.
		dayEnd _ dayEnd + (Duration days: 1).
		].

	statisticsHolder verifyFromParts: dayStatsHolders.
	^statisticsHolder.