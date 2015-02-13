custom objects
removeProcess: aProcess
	"Do not use this!"

	Q2Log warn: 'Process removed: ', aProcess name.
	processes remove: (self removeObjectById: aProcess)