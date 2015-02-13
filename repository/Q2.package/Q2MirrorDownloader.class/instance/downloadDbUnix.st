as yet unclassified
downloadDbUnix
	"Downloads a mirror from the Q2 server when the current platform is Unix."

	self cleanUp.
	(PipeableOSProcess command: ('wget -O {1} {2}' format: {
		self targetPath.
		self downloadUrl }))
		close;
		output.