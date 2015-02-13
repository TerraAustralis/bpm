as yet unclassified
removeProcess: aProcess
	(self includesProcess: aProcess) ifTrue: [
		processes ifNil: [processes := self user processes].
		processes remove: aProcess
	]