initialize-release
loadOrCreateIniFileNamed: iniFileName
	"Check for ini file on disk and load it if it exists - then complement by adding missing default values.
	If missing on disk we create one with the current values of the in-image inifile in it.
	If there is no in-image ini-file we first create one with default values."

	| file |
	
	(Q2Platform workingDirectory fileExists:  iniFileName)
		ifTrue: [
			[	file := Q2Platform workingDirectory oldFileNamed: iniFileName.
				"Trap this, because GemStone od not have method wantsLineEndConversion:"
				[file wantsLineEndConversion: true] on: Error do: [:ex | ex].
				iniFile := INIFile readFrom: file.
			] ensure: [file close].
			self initializeMissingDefaultSettings.
			]
		ifFalse: [
			iniFile ifNil: [
				iniFile := INIFile new. 
				self initializeMissingDefaultSettings.
				].
			[	file := Q2Platform workingDirectory newFileNamed: iniFileName.
				iniFile writeOn: file.
			] ensure: [file close]
			].

	self setExpireTime.