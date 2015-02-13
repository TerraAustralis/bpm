transactions
validate
	"To make a transition, the user must have write access"
	super validate.
	(case writeCheck) ifNil: [ Q2TxnValidationError signal: 'User ', user name, ' can not write case ', case name, '.']