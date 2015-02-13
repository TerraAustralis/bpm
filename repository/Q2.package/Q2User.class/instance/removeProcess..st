processes
removeProcess: aProcess
	"Remove process if added and make sure we are removed from imports."

	(processes includes: aProcess) ifTrue: [
		processes remove: aProcess.
		aProcess removeImportedUser: self.
		Q2Log notice: 'User ', self name, ' removed from access to process: ', aProcess name]