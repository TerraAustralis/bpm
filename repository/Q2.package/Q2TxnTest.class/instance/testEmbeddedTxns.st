methods
testEmbeddedTxns

	Q2Session sessionDo: [ :session |
 
		model modifyGlobalDefinitionTo: 'Q2Model loadSimple' ].
		model explore.
	self assert: model transactions size = 3