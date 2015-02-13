cases
buildCaseSimpleNew: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible
"Untested.  Can be discarded"
"LIke buildCaseSimple:periodStart:endPeriod:probNew:probClosed:probResponsible:ensureLastTransition: but ensures last transaction is new"
	| case stage |

	case := self	buildCaseSimple: numTxns 
				periodStart: startTimeStamp 
				endPeriod: endTimeStamp 
				probNew: probNew 
				probClosed: probClosed
				probResponsible: probResponsible
				ensureLastTransition: true.

	stage := case transactions last transition to.
	stage isNew: false.
	stage isClosed: false.
	^case.