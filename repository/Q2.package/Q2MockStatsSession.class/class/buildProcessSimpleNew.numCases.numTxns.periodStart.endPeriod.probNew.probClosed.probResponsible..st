processes
buildProcessSimpleNew: process numCases: numCases numTxns: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible
"Untested.  Can be discarded"
"Fill process with numCasses cases.  Each case is filled with a valid set of transactions
in the time period specified using the specified probabilities. The last transaction of each case opens it"
	| cases |

	cases := OrderedCollection new.
	1 to: numCases do: [:index |
		cases add: (self	buildCaseSimpleNew: numTxns
						periodStart: startTimeStamp
						endPeriod: endTimeStamp
						probNew: probNew
						probClosed: probClosed
						probResponsible: probResponsible).
		].
	process cases: cases.
	cases do: [:case |
		case process: process].