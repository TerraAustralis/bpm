as yet unclassified
uploadMirrorTxns
	"Upload our local mirror txns to the server."

	| byteArray |
	self flag: #q2MirroringTodo. "what to do with mirrorTransactions ?"	
	byteArray := (Q2TxnSerializer on: transactionLog) compress: true; serialize.
	Q2Object uploadMirrorTransactions: byteArray