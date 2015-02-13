run tests
runTestSimpleNew: numCases  numTxns: numTxns seed: seed
	| statistics |

	statistics := 
		self	runTestSimpleNew: numCases
			numTxns: numTxns
			periodStart:  self yesterdayStartTime
			endPeriod:  self yesterdayEndTime 
			probNew: self defaultProbNew
			probClosed: self defaultProbClosed
			probResponsible: self defaultProbResponsible
			seed: seed.
	^statistics.