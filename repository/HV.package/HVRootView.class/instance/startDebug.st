start-stop
startDebug
	"Start service on default port in debug mode."

	^self startOn: self class defaultPort mode: #debug