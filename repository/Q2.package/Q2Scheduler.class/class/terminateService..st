control
terminateService: aService

	| process |
	process _ ServiceProcesses at: aService ifAbsent: [^self].
	ServiceProcesses removeKey: aService.
	process terminate.