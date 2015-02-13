transactions
modifyProcessDefinitionIn: process to: definition

	^self applyTxn: (Q2ModifyProcessDefinitionTxn new process: process definition: definition)