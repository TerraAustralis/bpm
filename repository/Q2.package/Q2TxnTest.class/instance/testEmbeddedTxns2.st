methods
testEmbeddedTxns2

	Q2Session sessionDo: [ :session |
		model modifyGlobalDefinitionTo: 'Q2Model loadSimple'.
		model modifyGlobalDefinitionTo: 'self error: ''oops''' ].
	model explore.