directories
workingDirectory
	^ WorkingDir ifNil: [ WorkingDir := self current defaultWorkingDirectory ].