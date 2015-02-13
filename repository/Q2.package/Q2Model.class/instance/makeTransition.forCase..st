transactions
makeTransition: aTransition forCase: aCase
	self applyTxn: (Q2CaseTransitionTxn case: aCase transition: aTransition).
	self runEvents.