transactions
modifyForm: aForm formBuffer: aFormBuffer fields: aFieldBuffersCollection owner: formOwner
	self applyTxn: (Q2ModifyFormTxn new form: aForm; formOwner: formOwner; formBuffer: aFormBuffer; fieldBuffers: aFieldBuffersCollection)