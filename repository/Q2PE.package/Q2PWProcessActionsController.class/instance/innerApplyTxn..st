as yet unclassified
innerApplyTxn: aTxn
 
	"for now we just apply the transaction locally only."
	[[ aTxn validate ] on: Q2TxnValidationError do: [ :ex | ^ self message: ex messageText ]]
		"on: Error do: [ :ex | ^self message: ex printString  ]. " value.
	aTxn apply.