check Process
checkProcess
	"Check if the graph is in a state that a valid process can be built. Return true or false"
	^ self isProcessGraphOk & self isProcessUniqueInGjallar