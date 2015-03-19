start-stop
startDebugOn: portNum
	"Start service on port <portNum> in debug mode."

	^self startOn: portNum mode: #debug