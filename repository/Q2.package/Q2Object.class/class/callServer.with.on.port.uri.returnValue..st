soap
callServer: aSymbol with: parameterArrays on: host port: port uri: uri returnValue: returnValue
	"Call the service and return results. No exception handling here."

	| call |
	Q2Log debug: 'Call server: ', aSymbol, ' on host: ', host.
	call := port ifNotNil: [(SoapCallEntry tcpHost: host port: port) newCall]
			 ifNil: [(SoapCallEntry tcpHost: host) newCall].
	uri ifNotNil: [call targetObjectURI: uri].
	call methodName: aSymbol.
	call addParameters: parameterArrays.
	^returnValue ifTrue: [call invokeAndReturn] ifFalse: [call invoke]