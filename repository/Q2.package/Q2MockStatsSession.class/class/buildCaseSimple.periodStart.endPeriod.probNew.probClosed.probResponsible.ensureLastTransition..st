cases
buildCaseSimple: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible ensureLastTransition: ensureTransition
"
create new case and add numTxns transactions to it.  
Probability paramters used to randomly assign types to transactions.  
Timestamp parameters used to determine timestamps for transactions.
returns created case.
If parameter ensureTransition is true then ensure last transaction is a transition
"
	| case transactions txn firstStage secondStage transition |

	case := self buildBasicCase: numTxns.
	transactions := case transactions.
	firstStage := self newStageProbNew: 1.0 probClosed: 0.0.
	2 to: numTxns do: [:index |
		(transactions at: index) ifNil: [
			(probResponsible < rng next and: [ensureTransition not | (index < numTxns)]) ifTrue: [
				txn := Q2MockSetResponsibleTxn case: case]
			ifFalse: [
				secondStage := self newStageProbNew: probNew probClosed: probClosed.
				transition := Q2MockWorkflowTransition from: firstStage to: secondStage.
				txn := Q2MockCaseTransitionTxn case: case.
				txn transition: transition.
				firstStage _ secondStage.
				].
			transactions at: index put: txn.
			].
		].

	self addTimeStamps: case periodStart: startTimeStamp endPeriod: endTimeStamp.
	^case