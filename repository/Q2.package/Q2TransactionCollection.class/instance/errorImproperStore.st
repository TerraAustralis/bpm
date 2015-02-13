caching
errorImproperStore 
	"Create an error notification that an improper store was attempted."

	self error: 'Improper store into a TransactionLog, item does not look like a Q2Txn'