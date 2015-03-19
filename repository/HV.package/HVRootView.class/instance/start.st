start-stop
start
	"Start service on default port in deployment mode."

	^self startOn: self class defaultPort mode: #deployment