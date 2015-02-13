transactions
apply
	"Perform the txn."

	users do: [:each | each addProcess: process]