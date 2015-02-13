soap
pingServer
	"Call the service #q2ping and return true if we receive a #q2pong."

	[^(self callServer: #q2ping with: {}) = 'q2pong']
		on: SoapCannotConnectToServer, SoapCannotResolveServer, SoapHttpGenericError
		do: [:ex | "ok, no server available"
			^false]