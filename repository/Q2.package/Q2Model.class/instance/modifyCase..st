transactions
modifyCase: aFormValue 
	"The case should be modified by flushing the formValue.
	We let the formValue first create any extra txns before
	we apply the txn for flushing the formvalue itself."

	aFormValue performExtraTxns.
	self applyTxn: (Q2ModifyCaseTxn new case: aFormValue target; formBuffer: aFormValue).

	self runEvents.