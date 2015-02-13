transactions
postMaster
	"The transaction has been officially applied on the master.
	This can either be after an online action, or when the txn is 
	applied from a mirror."

	self timestampApplied: Q2TimeStamp now.