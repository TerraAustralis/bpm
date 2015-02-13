soap services
downloadTransactionsFrom: number for: aMirrorDefintionIdString
	"Return transactions from <number>."

	Q2Session current sessionModelDo: [ :sess :model | 
		^(Q2TxnSerializer on: model transactionLog) 
			compress: true;
			mirrorDefinition: (model findObjectById: 
				(UUID fromString: aMirrorDefintionIdString));
			after: number;
			serialize ]