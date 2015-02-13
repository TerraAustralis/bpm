processes
buildProcess: process numCases: numCases numTxns: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible
	| cases |

	cases := OrderedCollection new.
	1 to: numCases do: [:index |
		cases add: (self	buildCase: numTxns
						periodStart: startTimeStamp
						endPeriod: endTimeStamp
						probNew: probNew
						probClosed: probClosed
						probResponsible: probResponsible).
		].
	process cases: cases.
	cases do: [:case |
		case process: process].