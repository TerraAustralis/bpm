transactions
modifyUserCentral: aUserCentral user: aUser
	self applyTxn: (Q2ModifyUserCentralTxn userCentral: aUserCentral user: aUser)