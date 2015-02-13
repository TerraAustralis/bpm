as yet unclassified
applyTxn: aTxn

	[
	[
		isComplete := false.

		self message: '<font color="green">Working...</font>'.

		self applyTxnInner: aTxn. 

		history add: aTxn.

		isComplete := true.
  
	] on: Q2TxnValidationError do: [ :ex | ^ self message: ex messageText ].
	] on: Q2SelectionNotification do: [ :ex | ui notifiedOfSelection: ex selected. ex resume: true ].