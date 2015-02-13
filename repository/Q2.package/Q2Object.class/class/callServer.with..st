soap
callServer: aSymbol with: parameterArrays
	"Call on the Gjallar server host"

	| hostParts host port |
	hostParts := (self settings serverSoapHost) subStrings: ':'.
	host := hostParts at: 1.
	port := hostParts at: 2 ifAbsent: [ nil ].
	port ifNotNil: [ port := port asNumber ].
 	^self 
		callServer: aSymbol 
		with: parameterArrays 
		on: host
		port: port