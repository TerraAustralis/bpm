external calls
runWithSystemFramework: string
	"This syntax is not compatible with GemStone."
	self flag: #gemstone.

	"<apicall: short 'system' (char*) module: 'System.framework'>"
	
	^ self externalCallFailed