as yet unclassified
doGraphStage: aStage setStatus: to
	 
	self applyTxn: (Q2GraphStageSetStatusTxn  new 
					stage: aStage;
					newStatus: to asSymbol)