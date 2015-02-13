as yet unclassified
doDeleteStage: stage

	 
	self applyTxn: (Q2DeleteStageTxn new
						stage: stage).