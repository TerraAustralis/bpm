processes
adminProcesses
	"I should always have access to the processes I administrate.
	If I am a global admin I have access to all of them."

	^self isAdmin
		ifTrue: [self model processes] "all of them"
		ifFalse: [self processes select: [:p | p isAdmin: self]]