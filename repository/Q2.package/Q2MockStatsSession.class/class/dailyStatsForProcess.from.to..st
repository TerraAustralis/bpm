faking Q2Session
dailyStatsForProcess: process from: fromDate to: toDate
	| allStatsHolders |

	allStatsHolders _ dailyStatsHolders at: process.
	(allStatsHolders size > 7) 
		ifTrue: [^allStatsHolders last: 7]
		ifFalse: [^allStatsHolders].