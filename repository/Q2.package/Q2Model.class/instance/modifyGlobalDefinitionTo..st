transactions
modifyGlobalDefinitionTo: definition

	^self applyTxn: (Q2ModifyGlobalDefinitionTxn new definition: definition)