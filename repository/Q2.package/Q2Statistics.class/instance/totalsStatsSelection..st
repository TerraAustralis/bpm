fetching stats
totalsStatsSelection: statsParameterController
	"Computes stats for each time unit (currently only days supported) in resolution period."
	| resolution sessionClass statsHolders totals date |

	sessionClass _ Q2Session statisticsSessionClass.
	resolution _ statsParameterController resolution.
	resolution = 'daily' ifTrue: [
		date _ Date yesterday  addDays: statsParameterController numUnits negated.
		statsHolders _ sessionClass dailyStatsForProcess: statsParameterController process from: date to: Date yesterday.
		"move following code to Q2ProcessStatisticsHolder"
		totals _ Array new: Q2ProcessStatisticsHolder numTotals.
		totals at: 1 put: (Association key: #created	value: (Q2ProcessStatisticsHolder numCreatedCases: statsHolders)).
		totals at: 2 put: (Association key: #opened	value: (Q2ProcessStatisticsHolder numOpenedCases: statsHolders)).
		totals at: 3 put: (Association key: #open		value: (Q2ProcessStatisticsHolder numOpenCases: statsHolders)).
		totals at: 4 put: (Association key: #closed		value: (Q2ProcessStatisticsHolder numClosedCases: statsHolders)).
		totals at: 5 put: (Association key: #reopened	value: (Q2ProcessStatisticsHolder numReopenedCases: statsHolders)).
		totals at: 6 put: (Association key: #resolved	value: (Q2ProcessStatisticsHolder numResolvedCases: statsHolders)).
		^totals
		].

	self error: 'Unrecognized resolution'.