transactions
setResponsible: aUser forCase: aCase 

	self applyTxn: (Q2SetResponsibleTxn new responsible: aUser case: aCase).
	self runEvents.