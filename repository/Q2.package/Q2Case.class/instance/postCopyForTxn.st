synch
postCopyForTxn
	"Copy this case for storage in a txn. We can not
	share these collections with the original case object."

	categories := categories copy.
	roles := roles copy.
	forms := forms copy.
	transactions := transactions copy.