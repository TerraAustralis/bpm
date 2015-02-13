transactions
apply
	"Perform the txn. We only remove the link to those
	cases that we managed to reconnect."

	(link from isString) ifFalse: [
		link from removeLink: link.
		link from addTransaction: self].
	(link to isString) ifFalse: [
		link to removeLink: link.
		link to addTransaction: self]