transactions
createPersonalMirrorDefinitionFor: aQ2User prefix: aString processes: aCollection

	self applyTxn: (Q2CreatePersonalMirrorTxn for: aQ2User prefix: aString processes: aCollection)