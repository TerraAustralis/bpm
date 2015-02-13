cases
addCase: aCase
	"Case is being moved to this stage.
	We force setting/changing responsible."

	aCase stage: self; ensureResponsible.
	^aCase