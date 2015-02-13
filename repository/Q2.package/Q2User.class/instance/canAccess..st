testing
canAccess: aProcess
	"If I have it, yes."

	^aProcess isNil or: [processes includes: aProcess]