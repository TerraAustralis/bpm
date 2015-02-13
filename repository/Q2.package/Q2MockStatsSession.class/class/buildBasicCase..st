cases
buildBasicCase: numTxns
	| case transactions |

	numTxns < 2 ifTrue: [self error: 'Must have at least two transactions'].
	case := Q2MockCase new.
	transactions := Array new: numTxns.
	transactions at: 1 put: (Q2MockCreateCaseTxn case: case).
	case transactions: transactions.
	^case.