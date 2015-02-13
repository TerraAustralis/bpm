queries
unAvailableTransitions
	"If there are general denials then the valid transitions are also not available."

	^denials ifEmpty: [deniedTransitions keys] ifNotEmpty: [deniedTransitions keys, self validTransitions]