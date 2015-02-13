as yet unclassified
calculateSubTxns
 
	transitions := self stage incomingTransitions collect: [ :trans | Q2DeleteTransitionTxn new transition: trans; force: true ]