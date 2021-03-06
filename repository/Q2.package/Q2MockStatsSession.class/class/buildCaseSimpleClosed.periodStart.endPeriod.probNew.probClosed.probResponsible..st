cases
buildCaseSimpleClosed: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible
" LIke buildCaseSimple:periodStart:endPeriod:probNew:probClosed:probResponsible:ensureLastTransition: but ensures last transaction is closed"
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
	stage isClosed: true.
	^case.