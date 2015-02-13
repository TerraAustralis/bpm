transactions
modifyUser: aFormValue 
	self applyTxn: (Q2ModifyUserTxn formBuffer: aFormValue)