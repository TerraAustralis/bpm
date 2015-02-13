directories
tempDirectory
	^ TempDir ifNil: [ TempDir := self current defaultTempDirectory ].