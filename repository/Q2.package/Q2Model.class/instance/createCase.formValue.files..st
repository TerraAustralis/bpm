transactions
createCase: aCase formValue: aFormValue files: files
  "Create case. Afterwards we give the formValue a chance to create any extra txns.
	We also send a confirmation by email if we can/should."

  aFormValue ifNotNil: [ aFormValue flush ].	"to be sure"
  self applyTxn: (Q2CreateCaseTxn case: aCase files: files).
  aFormValue ifNotNil: [ aFormValue performExtraTxns ].
  self runEvents.
  aCase sendConfirmationToReporter