transactions
postMasterOutsideTransaction
	super postMasterOutsideTransaction.
	(Q2StageTransitionEvent for: case) signal.
	(Q2StageTransitionForRelatedCaseEvent for: case) signal.
	(Q2StageTransitionForMyCaseEvent for: case) signal