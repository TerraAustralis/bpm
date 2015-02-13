run tests
runTestSimpleClosed: numCases  numTxns: numTxns seed: seed skip: numSkip
	| statistics |

	statistics := 
		self	runTestSimpleClosed: numCases
			numTxns: numTxns
			periodStart:  self yesterdayStartTime
			endPeriod:  self yesterdayEndTime 
			probNew: self defaultProbNew
			probClosed: self defaultProbClosed
			probResponsible: self defaultProbResponsible
			seed: seed
			skip: numSkip.
	^statistics.