external calls
programPath

	^ ProgramPath ifNil: [
		self findDotCommand
	]
		 "'/usr/local/bin/'"