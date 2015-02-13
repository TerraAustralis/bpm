as yet unclassified
doDeleteTransition: transition
	 
	self applyTxn: (Q2DeleteTransitionTxn new
						transition: transition)