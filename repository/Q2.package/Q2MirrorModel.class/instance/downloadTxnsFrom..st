as yet unclassified
downloadTxnsFrom: number
	"Download txns from the server."
	| deserializer |
	deserializer := Q2TxnDeserializer on: (Q2Object downloadTransactionsFrom: number for: mirrorDefinition).
	^deserializer
		decompress: true;
		deserialize