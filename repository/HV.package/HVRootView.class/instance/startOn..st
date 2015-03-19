start-stop
startOn: portNum
	"Start service on port <portNum> in deployment mode."

	^self startOn: portNum mode: #deployment