fetching stats
averageStatsSelection: statsParameterController
	| resolution sessionClass statsHolders totals date |

	sessionClass _ Q2Session statisticsSessionClass.
	resolution _ statsParameterController resolution.
	resolution = 'daily' ifTrue: [
		date _ Date yesterday  addDays: statsParameterController numUnits negated.
		"move following code to Q2ProcessStatisticsHolder"
		statsHolders _ sessionClass dailyStatsForProcess: statsParameterController process from: date to: Date yesterday.
		totals _ Array new: Q2ProcessStatisticsHolder numTotals.
		totals at: 1 put: (Association key: 'time to open'		value: (Q2ProcessStatisticsHolder aveTimeToOpen:			statsHolders)).
		totals at: 2 put: (Association key: 'set responsible'	value: (Q2ProcessStatisticsHolder aveTimeToSetResponsible:	statsHolders)).
		totals at: 3 put: (Association key: 'period open'		value: (Q2ProcessStatisticsHolder avePeriodOpen:			statsHolders)).
		totals at: 4 put: (Association key: 'time to close' 		value: (Q2ProcessStatisticsHolder aveTimeToClose:			statsHolders)).
		totals at: 5 put: (Association key: 'resolution'			value: (Q2ProcessStatisticsHolder aveTimeToResolution:	statsHolders)).
		totals at: 6 put: (Association key: 'Validation'			value: (Q2ProcessStatisticsHolder avePeriodForResolutionValidation: statsHolders)).
		^totals
		].

	self error: 'Unrecognized resolution'.