zipping
zipDbWin32
	"Zip it up using infozip for scalability."

	self flag: #q2todo. " infozip can't zip directories as required.
		We could use 7zip instead."	
	^(ProcessWrapper new
		useStdout;
		startWithShellCommand: 
			('cd {1} && ..\..\win32\bin\7za.exe a-r -tzip "..\{2}.zip" *'
				format: { 
					self databaseFullPath.
					mirrorDefinition prefix });
		upToEnd)