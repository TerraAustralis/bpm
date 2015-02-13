transactions
disconnect
	"Disconnect the categories."

	categories ifNotNil: [
		categories := categories collect: [:cat | cat id copy]]