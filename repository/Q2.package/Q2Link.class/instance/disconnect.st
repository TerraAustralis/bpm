transactions
disconnect
	"Disconnect the cases we link."

	super disconnect.
	from := from id.
	to := to id.
	type := type id