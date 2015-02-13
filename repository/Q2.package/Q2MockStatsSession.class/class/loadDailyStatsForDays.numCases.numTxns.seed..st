loading stats
loadDailyStatsForDays: numDays numCases: numCases numTxns: numTxns  seed: seed

	^self	loadDailyStatsForDays: numDays
			numCases: numCases
			numTxns: numTxns 
			probNew: self defaultProbNew
			probClosed: self defaultProbClosed
			probResponsible: self defaultProbResponsible
			seed: seed