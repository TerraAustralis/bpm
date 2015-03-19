start-stop
startOn: portNum mode: mode
	"Creates a new standalone http service with this root view plugged in."

	|  name useSessions ma |
	name := self serviceName.
	useSessions := self useSessions.
	ma := ModuleAssembly core.
	coreMod := ma currentModule.
"	ma logTo: (KomLogger on: Transcript)."
	useSessions ifTrue: [
		ma trackSessions.
		sessionMod := ma currentModule.
		ma sessionTimeout: 30].
	alias = ''
		ifTrue: [ma addPlug: [:request | self process: request]]
		ifFalse: [ma alias: alias
					to: [ma addPlug: [:request | self process: request]]].
	^(HttpService startOn: portNum named: name)
		plug: ma rootModule; mode: mode