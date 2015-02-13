cases
buildCase: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible

	^self	buildCaseSimple: numTxns 
			periodStart: startTimeStamp 
			endPeriod: endTimeStamp 
			probNew: probNew 
			probClosed: probClosed
			probResponsible: probResponsible
			ensureLastTransition: false.