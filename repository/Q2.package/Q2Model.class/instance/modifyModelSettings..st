transactions
modifyModelSettings: aFormBuffer
	self applyTxn: (Q2ModifyModelSettingsTxn formBuffer: aFormBuffer)