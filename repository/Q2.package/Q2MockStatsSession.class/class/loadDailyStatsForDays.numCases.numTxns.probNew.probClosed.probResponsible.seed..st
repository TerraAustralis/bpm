loading stats
loadDailyStatsForDays: numDays numCases: numCases numTxns: numTxns probNew: probNew probClosed: probClosed probResponsible: probResponsible seed: seed
	| process statisticsCalculator periodStart periodEnd dayStart dayEnd statsHolders |

	self initializeStatistics: seed.
	process := Q2MockProcess new: 'simple'.
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
	"statisticsCalculator verifyCaseStatsFrom: periodStart to: periodEnd."
	
	dayStart _ periodStart.
	dayEnd _ periodStart + (Duration days: 1).
	dailyStatsHolders _ Dictionary new.
	statsHolders _ Array new: numDays.
	1 to: numDays do:  [:index  |
		statsHolders at: index put: ( (statisticsCalculator computeCaseStatsFrom: dayStart to: dayEnd) anyOne).
		dayStart _ dayEnd.
		dayEnd _ dayEnd + (Duration days: 1).
		].

	dailyStatsHolders at: process put: statsHolders.