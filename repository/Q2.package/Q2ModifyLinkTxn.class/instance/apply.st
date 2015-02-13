transactions
apply
	"Perform the txn. Change the existing link in place.
	Currently this only means the type."

	| originalLink |
	originalLink := link from findLinkById: link id.
	originalLink type: link type.
	link from addTransaction: self