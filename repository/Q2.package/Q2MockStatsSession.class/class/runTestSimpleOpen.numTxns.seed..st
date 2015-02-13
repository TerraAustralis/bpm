run tests
runTestSimpleOpen: numCases  numTxns: numTxns seed: seed
	| statistics |

	statistics := 
		self	runTestSimpleOpen: numCases
			numTxns: numTxns
			periodStart:  self yesterdayStartTime
			endPeriod:  self yesterdayEndTime 
			probNew: self defaultProbNew
			probClosed: self defaultProbClosed
			probResponsible: self defaultProbResponsible
			seed: seed.
	^statistics.