initialization
initialize

	super initialize.

	newProcessName := 'new'.

	self getProcesses.
	process ifNil:[ process := processes first ].