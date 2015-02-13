as yet unclassified
downloadDbWin32
	"Downloads a mirror from the Q2 server."

	self cleanUp.	
	ProcessWrapper new
		useStdout;
		startWithCommand: ('win32\\bin\\wget.exe -O {1} {2}' format: {
			self targetPath.
			self downloadUrl });
		waitForExitFor: self timeOutInMilliseconds.