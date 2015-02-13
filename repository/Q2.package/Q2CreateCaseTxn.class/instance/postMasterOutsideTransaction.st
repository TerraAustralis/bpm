transactions
postMasterOutsideTransaction

	super postMasterOutsideTransaction.
	"At this point, the instance var 'case' is not the case created in the model."
	(Q2CreatedCaseEvent for: (self model findCaseById: case id)) signal