soap services
uploadMirrorTransactions: aByteArray 
	"Apply mirror transactions on master.
	Return true if all succeeds, false if any fails."
	| mirrorTxns |
	mirrorTxns := (Q2TxnDeserializer on: aByteArray) 
		decompress: true;
		deserialize.
	^ Q2Session sessionModelDo: [:sess  :model | model readMirrorTxns: mirrorTxns ]