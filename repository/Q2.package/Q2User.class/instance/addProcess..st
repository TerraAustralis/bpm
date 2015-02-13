processes
addProcess: aProcess
	"Add process if not added and make sure we are imported."

	(processes includes: aProcess) ifFalse: [
		processes add: aProcess.
		aProcess importUser: self.
		Q2Log notice: 'User ', self name, ' given access to process: ', aProcess name]