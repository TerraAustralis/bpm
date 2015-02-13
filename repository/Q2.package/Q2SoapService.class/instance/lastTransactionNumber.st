soap services
lastTransactionNumber
	"Return last transaction number."

	^ Q2Session sessionModelDo: [:sess  :model |  model lastTransactionNumber]